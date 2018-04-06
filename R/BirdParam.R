# FUNCTION 1
#
BirdMorphParam = function(BMass, WSpan, WArea, C_db=0.2, C_dpro=0.2, ADensity = 1.23,
                          grav=9.8,k=1.2){
  WLoading = BMass / WArea # calculate wing loading
  AR = WSpan^2/WArea  # calculate aspect ratio of wing
  BWeight = BMass*grav # calculate weight of bird

  ## flight performance parameters
  ## the following formulations are adapted from C.J. Pennycuick's FLIGHT 1.25 program
  Sb=0.00813*BMass^(0.666) # calculate body frontal area
  flap_freq = BMass^(3/8)*grav^(1/2)*WSpan^(-23/24)*WArea^(-1/3)*ADensity^(-3/8)  #### calculate flapping frequency
  Pbmr = 10^(log10(3.79*BMass^(0.723))) # calculate basal metabolic rate
  Pmet = 0.23*Pbmr # calculate metabolic Power
  Vmp = (0.807*k^0.25*BMass^0.5*grav^0.5)/(1.23^0.5*WSpan^0.5*Sb^0.25*C_db^0.25)  # calculate speed at minimum Power
  Pam = (1.05*k^0.75*BMass^(3/2)*grav^(3/2)*Sb^(1/4)*C_db^0.25)/(ADensity^0.5*WSpan^(3/2))   # calculate absolute minimum Power
  Mmusc = 0.17*BMass # calculate muscle mass

  #print results
  BirdParam = data.frame(BMass = BMass, BWeight, WSpan, WArea, AR, WLoading, C_db, C_dpro, flap_freq, Sb, Pmet, Pbmr, Vmp, Pam)
  return(BirdParam)
}
# END OF FUNCTION 1

