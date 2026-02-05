install.packages("ggplot2")
#tidyverse is bunch of packages in which ggplot2 is also installed
library("tidyverse")


#basic plot functions, mean, bar staccked or seperate, etc.
# aes gives x and y axis. geom_smooth adds trendline and 95% CI. lm stands for linear model. this function allows R to forcefully add linear.  
# WE ARE ASSUMING THERE IS LINEAR RELATIONSHIP. 
mtcars
ggplot(mtcars, aes(x= wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE)
  
# BY CHANGING THE ORDER OF THE COD, WE CAN CHANGE THE LAYERING OF THE PLOT. 
#POINTS ON TOP 
ggplot(mtcars, aes(x= wt, y = mpg )) + 
  geom_smooth(method = lm, se = FALSE)+ 
  geom_point(aes(color = hp, size = wt)) +
  xlab("Weight (tons)") +
  ylab("Miles per gallon") +
  scale_color_gradient(low= "green", high= "pink")

# adding labels to x and y, size varible to add size or use color.

bull.richness<- read.csv("Bull_richness.csv")
bull.richness

ggplot(bull.richness, aes(x = GrowthStage, y= richness, fill = Fungicide, colour = Crop)) +
  geom_boxplot() +
  geom_point(position = position_jitterdodge()) + 
  scale_fill_manual(values = c("orange", "blue")) +
  scale_color_manual(values = c("red", "skyblue"))

# jitterdodge seperate on the basis of color variable. add all the points we have in data. we are not hiding any data. 
# scale_color changes the co;or of the data points in our grapgh and we can choose the colour by ourselves. 
# fill and color are different so we need to add code for this one

ggplot(bull.richness, aes(x = GrowthStage, y= richness, group = Fungicide,  colour  = Fungicide))+
  stat_summary(fun = mean, geom = "line") +
  stat_summary(fun.data = mean_cl_normal, geom = "errorbar") +
  geom_jitter()


# FACETTING 
ggplot(bull.richness, aes(x = GrowthStage, y= richness, group = Fungicide,  colour  = Fungicide))+
  stat_summary(fun = mean, geom = "line") +
  stat_summary(fun.data = mean_cl_normal, geom = "errorbar") +
  facet_wrap(~Crop*Treatment, scales = "free")

# scales free is for removing extra levels that do not have any data. 
