##loading csvfiles and library

library(tidyverse)
data <- read_csv('MechaCar_mpg.csv')

data2 <-read_csv('Suspension_Coil.csv')

#determining the linear regression model on MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data))

##dataframe of suspension psi in total and each lot

total_summary <- data2 %>%summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- data2 %>% group_by(Manufacturing_Lot) %>%summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#t.test the psi vs the mu of population 1500

t.test((data2$PSI), mu=1500)

lot1<- subset(data2, Manufacturing_Lot =="Lot1")

lot2<- subset(data2, Manufacturing_Lot =="Lot2")

lot3<- subset(data2, Manufacturing_Lot =="Lot3")

t.test((lot1$PSI), mu=1500)
t.test((lot2$PSI), mu=1500)
t.test((lot3$PSI), mu=1500)