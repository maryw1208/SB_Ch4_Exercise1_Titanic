# Mary Wojtas
# Chapter 4, Exercise 1
# November 10, 2018

# Reading in the cleaned Titanic Data Set
library(readr)
titanic_clean <- read_csv("~/Documents/RProjects/Ch3_Exer2_Titanic/titanic_clean.csv")

# Make a copy of the dataset
titanic <- titanic_clean

# Seeing if there are NA values in Sex
print(which(is.na(titanic$sex)))


# Install and load the ggplot2 package
library(ggplot2)

# Plot the distribution of sexes within the classes of the ship.
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge")

# These bar plots won't help you estimate your chances of survival. 
# Copy the previous bar plot, but this time add a facet_grid layer for Survived.
ggplot(titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge") +
  facet_grid(. ~ survived)

# Define an object for position jitterdodge, to use in the next plot
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# Take the previous plot and add Age onto the y aesthetic
# Change geom_bar() to geom_point() and set its attributes size = 3, alpha = 0.5 
# and position = posn.jd
# Make sure that Sex is mapped onto color instead of fill to correctly color 
# the scatter plots.
ggplot(titanic, aes(x = pclass, y= age, col = sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(. ~ survived)


