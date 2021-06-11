library(tidyverse)
data <- read_csv('MechaCar_mpg.csv')

data2 <-read_csv('Suspension_Coil.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data))

total_summary <- data2 %>%summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- data2 %>% group_by(Manufacturing_Lot) %>%summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))