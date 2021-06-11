# MechaCar_Statistical_Analysis

## Linear progression to predict MPG
  
  
  From observing the data output using the following script```summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data))```, one can conclude that the only variables to produce a non-random amount variance to the MPG linear regression model were, the vehicle length, and the ground clearance with vehicle weight being close to the desired .05 p-value. The slope of the linear model cannot be dismissed as zero either as there were a few significant values and the coinciding r squared value was .71. There is strong evidence to suggest in resulting analysis that MPG is being predicted with the given dataset and its attributing significant values.
  
## Summary statistics on suspension coils
  
  
  Upon observing the dataframes for the total summary and lot summary one can see the mean, median, variance and standard deviation for each applicable PSI value.
Due to the design specifications for the MechaCar suspension coils that dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, we can see that for the total summary that the variance does not exceed hundred, however in lot 3 we can see the variance is well over a hundred.

## T-Tests on Suspension Coils

  
  
  Upon observing the output from the t.tests done on the PSI of total lots and individual lots against the mu of the population dataset being 1500, one can see that just about every p-value stemming from the resulting t.tests does not return sufficient evidence to reject the null hypothesis. However lot3 returned a significant value of .04 which does provide an avenue to rejct the null hypothesis.
  
  
## Study Design: MechaCar vs Competition
  
  In comparing the Mechacars vs competitors, one may be able use the following metrics, MPG, vehicle weight, and their supsension involving PSI. Possible null hypothesis could involve the Mechacars MPG and competitor vehicles efficiency having no significant difference and the alternative hypothesis being that Mechacars outperform the competitors vehicles. The following tests can be used to determine the aforementioned hypothesis, Linear regression models to determine the mpg, and t.tests. The following data would be required to run the tests mentioned before, competitors vehicle datasets, and mechacars datasets. Also checking to see if there were skew in their data and if so using Log10 to smooth out the data, also using samples to further provide unbiased data.
  
 
