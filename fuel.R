#
# fuel.R
# Copyright © 2020 Matthew Maring
#
# Fuel calculations for the Airbus A320 file
# Please see ReadMe for details
#

# read the csv file, pick according to type of calucaltion you want to perform
fuel <- read.csv(file=file.choose())

# regular fuel, calculates:
# - fuel usage
# - fuel correction for weight
# - trip time
lm(fuel$Fuel.Usage ~ polym(fuel$Air.Distance, fuel$Flight.Level, degree=6, raw=TRUE))
lm(fuel$Fuel.Correction ~ polym(fuel$Air.Distance, fuel$Flight.Level, degree=5, raw=TRUE))
lm(fuel$Time ~ polym(fuel$Air.Distance, fuel$Flight.Level, degree=6, raw=TRUE))

# get time if have fuel
# must plug-in fuel without correction
lm(fuel$Fuel.Usage ~ polym(fuel$Time, degree=12, raw=TRUE))

# get fuel if have time
lm(fuel$Fuel.Usage ~ polym(fuel$Time, fuel$Air.Distance, fuel$Flight.Level, degree=6, raw=TRUE))
lm(fuel$Fuel.Correction ~ polym(fuel$Time, fuel$Air.Distance, fuel$Flight.Level, degree=5, raw=TRUE))