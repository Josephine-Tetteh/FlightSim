# FUNCTION 6

PowerCurve = function(FlightPerformance, TrueAirSpeed1, TrueAirSpeed2){
  if(missing(TrueAirSpeed1))  TAS = TrueAirSpeed2$TAS;
  if(missing(TrueAirSpeed2)) TAS = TrueAirSpeed1$TAS;
  AA = TAS
  BB = FlightPerformance$Pmech_data
  Vmp = FlightPerformance$Vmp_data
  Powercurve = plot(x= AA, y= BB,type = "p", log="y", xlab="Velocity (m/s)", ylab="Mechanical Power (W)", main="Mechanical Powercurve")
  abline(v = FlightPerformance$Vmp_data, col = "blue", lty = 2)
  return(Powercurve)
}
# END OF FUNCTION 6


