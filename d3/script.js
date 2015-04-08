
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


		d3.csv("NYC_US_Hourly_Demand.csv")
		.row(getDate)
		.get(function(err, data) {draw(data)})

		var draw = function(data) {
			d3.select("body").selectAll("div")
				.data(data.slice(0,8760/12)) // just the first year
				.enter()
				.append("div")
				.attr("class", "bar")
				.style("height", function(d) {
					var barHeight = d.DM * (1/10);
					return barHeight + "px"
				});

			};