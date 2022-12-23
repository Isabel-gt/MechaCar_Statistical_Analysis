library(dplyr)
install.packages("dplyr")
library(dplyr)

#Import and read csv as a data frame
mechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(mechaCar)
?lm()
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,mechaCar)
#Get the summary statistics
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,mechaCar))



# Import and read Suspension_Coil as a table
suspensionC <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
View(suspensionC)

# Get the summary
total_summary <- suspensionC %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
View(total_summary)

#Create a lot_summary df
lot_summary <- suspensionC %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
View(lot_summary)


#T-test
?t.test()
t.test(suspensionC$PSI,mu=1500)
#t.test(log10(suspensionC$PSI),mu=1500)

t.test(subset(suspensionC, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspensionC, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspensionC, Manufacturing_Lot=="Lot3")$PSI,mu=1500)


