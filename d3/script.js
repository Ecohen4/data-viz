
var width = 800,
	height = 400,
	margin = 50;

		// extract electricity demand data [MW] for nyc
		var getDemand = function(data) {
			var demand = []
			for (var i = data.length - 1; i >= 0; i--) {
				demand.push(
					data[i].DM
					)
			}	
			return demand
		};

		// create a date property to nyc
		var getDate = function(d) {
			d.DATE = new Date (d.YR, d.M - 1, d.D, d.HR) 
			return d
		}; 


		d3.csv("NYC_US_Hourly_Demand.csv", function(error, data) {
			data.forEach(function(d) {
				d.date = new Date (d.YR, d.M - 1, d.D, d.HR);
				d.demand = d.DM;
			}); 

			// scale the range of the data
			x.domain(d3.extent(data, function(d) {return d.date; }));
			y.domain([0, d3.max(data, function(d) {return d.demand; })]);

			// add the valueline path
			svg.append("path")
				.attr("class", "line")
				.attr("d", valueline(data)):

			// add the x-axis
			svg.append("g")
				.attr(class, "x axis")
				.attr("transform", "translate(0," + height + ")")
				.call(xAxis);

			// add the y-axis
			svg.append("g")
				.attr("class", "y axis")
				.call(yAxis)

		});


			.get(function(err, data) {draw(data)})
		}

		var draw = function(data) {
			d3.select("body").selectAll("div")
				.data(data.slice(0,24*30)) // first month
				.enter()
				.append("div")
				.attr("class", "bar")
				.style("height", function(d) {
					var barHeight = d.DM * (1/100);
					return barHeight + "px"
				});
				.style("width", function(d) {
					var barWidth = width/data.length
				})

			};