# A320-family-fuel-model

Predictive model of fuel consumption for Airbus A320, based on A320-214 CFM56 variant.

Note: the data contianed on this page must not be used for real world navigation and is only intended for flight simulation purposes.

Assumptions of the model:
- climb profile 250kt/300kt/0.78
- cruise profile 0.78
- descent profile 0.78/300kt/250kt
- standard temperature/pressure assumed
- no trip wind
- no air-conditioning/anti-ice
- landing weight 121254.24 lbs (55,000 kg)

  All of these assumptions may be compensated for with additional calculations

Model limitations:
- maximum range 3100nm ground distance, flights beyond this distance are currently NOT supported
- typical cruise range FL290-FL390 (29,000 to 39,000 ft)
- outside of this range, go-around data is used to supplement 0-500nm for FL100-FL270 (10,000 ft to 27,000 ft)
- for flights with cruise below FL100 (10,000ft), limited data is currently avaiable

Building the model yourself:
- the model was built in r with rstudio, though other statistical software can be used
