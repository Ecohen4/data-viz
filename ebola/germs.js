var data;

window.onload = function(){
	d3.json('germs.json', function(error, json){
		data = json
		draw(json)
	})
}
function draw(data){
	var width = 700
		,height= 600
		,margin = {
			left: 20,
			right: 20,
			top: 10,
			bottom: 10
		}
		;
	var svg = d3.select('#plot-area')
		.append('svg')
		.attr('width', width+margin.left+margin.right)
		.attr('height', height+margin.top+margin.bottom)
	var tooltip = d3.select("body").append("div")
	    .attr("class", "tooltip")
	    .style("opacity", 0);
	function x(d){
		return +d['case.fatality.rate']
	}
	function xMap(d){
		return xScale(x(d))
	}
	function y(d){
		return +d['average.basic.reproductive.rate']
	}
	function size(d){
		return 4
	}
	function fill(d){
		return d['primary.mode.of.transmission']
	}
	function colour(d){
		return fillScale(fill(d))
	}
	var xScale = d3.scale.linear()
		.domain([0, d3.max(data, x)])
		.range([0, width])
		.nice()
	var yScale = d3.scale.linear()
		.nice()
		.domain([0, 1, d3.max(data, y)])
		.range([height, height*.75, 0])
	var fillScale = d3.scale.category10()
		.domain(d3.set(data.map(fill)))
	var xAxis = d3.svg.axis().scale(xScale).orient("bottom");
	
	svg.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate("+margin.left+"," + height + ")")
        .call(xAxis)
    .append("text")
        .attr("class", "label")
        .attr("x", width)
        .attr("y", -6)
        .style("text-anchor", "end")
        .text("");

	var points = svg.append('g')
		.attr('transform', 'translate(+'+margin.left+','+margin.top+')')
		.attr('class', 'points-group')
		.selectAll('.point')
		.data(data)
		.enter()
		.append('circle')
		.classed('point', true)
		.attr('r', size)
		.attr('cx', xMap)
		.attr('cy', function(d){
			return yScale(y(d))
		})
		.attr('fill', "#fff")

	points.transition()
			.duration(500)
			.attr('fill', colour)

	points.on("mouseover", function(d) {
          tooltip.transition()
               .duration(200)
               .style("opacity", .9);
          tooltip.html(fill(d) + "<br/> (" + x(d) 
	        + ", " + y(d) + ")")
               .style("left", (d3.event.pageX + 5) + "px")
               .style("top", (d3.event.pageY - 28) + "px");
      })
      .on("mouseout", function(d) {
          tooltip.transition()
               .duration(500)
               .style("opacity", 0);
      })
}