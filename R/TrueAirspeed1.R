# FUNCTION 3. 

TrueAirSpeed1 = function(FlightSpeedComponents, WindSpeed.x, WindSpeed.y, WindSpeed.z){
  FlightSpeed.x = FlightSpeedComponents$FlightSpeed.x
  FlightSpeed.y = FlightSpeedComponents$FlightSpeed.y
  FlightSpeed.z = FlightSpeedComponents$FlightSpeed.z
  if(missing(WindSpeed.x))   WindSpeed.x = 0;
  if(missing(WindSpeed.y))   WindSpeed.y = 0;
  if(missing(WindSpeed.z))   WindSpeed.z = 0;
  WindSpeed.total = sqrt((WindSpeed.x^2 + WindSpeed.y^2 + WindSpeed.z^2))
  TAS = sqrt((FlightSpeed.x + WindSpeed.x)^2 + (FlightSpeed.y + WindSpeed.y)^2 + (FlightSpeed.z + WindSpeed.z)^2)
  vuframe = data.frame(TAS)
  return(vuframe)
}
# END OF FUNCTION 3
