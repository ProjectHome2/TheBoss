setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
load("homeFull.Rdata") 
library(ggplot2)
library(dplyr)
library(gridExtra)

#str() : Gives information about the data e.g 

ggplot(home, aes(x=PostalCode, y=SalesPeriod, colour = Condition)) + geom_point()

names(home)
#These are linear
ggplot(home, aes(x=LivingArea, y=Price)) + geom_point()
ggplot(home, aes(x=Age, y=Price)) + geom_point() #Might be good

#Might be linear
ggplot(home, aes(x=SalesPeriod, y=Price)) + geom_point() #Make a bar plot maybe
ggplot(home, aes(x=BasementArea, y=Price)) + geom_point()
ggplot(home, aes(x=GroundArea, y=Price)) + geom_point()
ggplot(home, aes(x=ConstructionYear, y=Price)) + geom_point()

#Makes no sense to check for linear dependence
ggplot(home, aes(x=ManyToilets, y=Price)) + geom_point()
ggplot(home, aes(x=Basement, y=Price)) + geom_point()
ggplot(home, aes(x=LargeGround, y=Price)) + geom_point()
ggplot(home, aes(x=Renovation, y=Price)) + geom_point()
ggplot(home, aes(x=HighHouse, y=Price)) + geom_point()
ggplot(home, aes(x=Quarter, y=Price)) + geom_point()
ggplot(home, aes(x=Levels, y=Price)) + geom_point()
ggplot(home, aes(x=NumberOfToilets, y=Price)) + geom_point()
ggplot(home, aes(x=NewKitchen, y=Price)) + geom_point()
ggplot(home, aes(x=NewWindows, y=Price)) + geom_point()
ggplot(home, aes(x=NewBathroom, y=Price)) + geom_point()
ggplot(home, aes(x=as.factor(NumberOfBedrooms), y=Price)) + geom_point() #x is a int therefore we need to use it as a factor to show th NA.
ggplot(home, aes(x=Balcony, y=Price)) + geom_point()
ggplot(home, aes(x=CloseToWater, y=Price)) + geom_point()
ggplot(home, aes(x=Garage, y=Price)) + geom_point()
ggplot(home, aes(x=YearOfSale, y=Price)) + geom_point()
ggplot(home, aes(x=NumberOfBedrooms, y=Price, colour = Condition)) + geom_point() #Might be linear

#Checking the Histograms
ggplot(home, aes(x=NewKitchen)) + geom_bar(stat = "count")
ggplot(home, aes(x=NewWindows)) + geom_bar(stat = "count")
ggplot(home, aes(x=CloseToWater)) + geom_bar(stat = "count")
ggplot(home, aes(x=NewBathroom)) + geom_bar(stat = "count")
ggplot(home, aes(x=as.factor(NumberOfToilets))) + geom_bar(stat = "count") + labs(x = "NumberOfToilets")
ggplot(home, aes(x=as.factor(NumberOfBedrooms))) + geom_bar(stat = "count") + labs(x = "NumberOfBedrooms")
ggplot(home, aes(x=ManyToilets)) + geom_bar(stat = "count")
ggplot(home, aes(x=Garage)) + geom_bar(stat = "count")
ggplot(home, aes(x=Renovation)) + geom_bar(stat = "count")
ggplot(home, aes(x=Basement)) + geom_bar(stat = "count")
ggplot(home, aes(x=LargeGround)) + geom_bar(stat = "count")
ggplot(home, aes(x=HighHouse)) + geom_bar(stat = "count")
ggplot(home, aes(x=Quarter)) + geom_bar(stat = "count")
ggplot(home, aes(x=as.factor(Levels))) + geom_bar(stat = "count") + labs(x = "Levels")
ggplot(home, aes(x=Balcony)) + geom_bar(stat = "count")
ggplot(home, aes(x=YearOfSale)) + geom_bar(stat = "count")





ggplot(home, aes(x=as.factor(NumberOfBedrooms), y=Price)) + geom_point() #x is a int therefore we need to use it as a factor to show th NA.

ggplot(home, aes(x=Price, fill = as.factor(Levels))) + geom_histogram(bins = 100) + geom_vline(xintercept = mean(home$Price))



## Log Y
#These are linear
ggplot(home, aes(x=LivingArea, y=log(Price))) + geom_point()
ggplot(home, aes(x=Age, y=log(Price))) + geom_point() #Might be good

#Might be linear
ggplot(home, aes(x=SalesPeriod, y=log(Price))) + geom_point() #Make a bar plot maybe
ggplot(home, aes(x=BasementArea, y=log(Price))) + geom_point()
ggplot(home, aes(x=GroundArea, y=log(Price))) + geom_point()
ggplot(home, aes(x=ConstructionYear, y=log(Price))) + geom_point()


## Log X
#These are linear
ggplot(home, aes(x=log(LivingArea), y=Price)) + geom_point()
ggplot(home, aes(x=log(Age), y=Price)) + geom_point() #Might be good

#Might be linear
ggplot(home, aes(x=log(SalesPeriod), y=Price)) + geom_point() #Make a bar plot maybe
ggplot(home, aes(x=log(BasementArea), y=Price)) + geom_point()
ggplot(home, aes(x=log(GroundArea), y=Price)) + geom_point()
ggplot(home, aes(x=log(ConstructionYear), y=Price)) + geom_point()


## Log both
#These are linear
ggplot(home, aes(x=log(LivingArea), y=log(Price))) + geom_point()
ggplot(home, aes(x=log(Age), y=log(Price))) + geom_point() #Might be good

#Might be linear
ggplot(home, aes(x=log(SalesPeriod), y=log(Price))) + geom_point() #Make a bar plot maybe
ggplot(home, aes(x=log(BasementArea), y=log(Price))) + geom_point()
ggplot(home, aes(x=log(GroundArea), y=log(Price))) + geom_point()
ggplot(home, aes(x=log(ConstructionYear), y=log(Price))) + geom_point()

