# FUNCTION 2

FlightSpeedComponents = function(t,x,y,z){
  dataday11=data.frame(t, x=x, y=y, z=z)
  change_x=c(dataday11[1,2],diff(dataday11$x))
  change_y=c(dataday11[1,1],diff(dataday11$y))
  change_z=c(dataday11[1,3],diff(dataday11$z))
  FlightSpeed.x = change_x/t # speed of flight in the x-direction
  FlightSpeed.y = change_y/t # speed of flight in the y-direction
  FlightSpeed.z = change_z/t # speed of flight in the z-direction
  FlightSpeed = sqrt(FlightSpeed.x^2 + FlightSpeed.y^2 + FlightSpeed.z^2) #speed of flight due to position vectors of the bird
  Vframe = data.frame(t,x,y,z,FlightSpeed.x, FlightSpeed.y, FlightSpeed.z, FlightSpeed)
  return(Vframe)
}
# END OF FUNCTION 2
