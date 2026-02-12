#IntroDataVis

#1. a) we need data, aes, geom. 
#b) geom helps in visual representation of the data in the form we want like line, bar and more.
# c) facet is the function which helps in splitting the data into multipanels. 
# d) ggplot works with layering. we can add layers to the plot by adding + sign. we can also change the order by changing the sequence of the code. 
# e) inside the aes function, we can add x and y variables and also include the color, shapes and other attributes. 
#2. coding 
library(ggplot2)
df<- read.csv("MycotoxinData.csv")
#plot 1 represents box plot
df$DON<- as.numeric(as.character(df$DON))
plot1<- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
  geom_boxplot() + 
  scale_fill_manual(values = c("TRUE" = "pink",
                               "FALSE" = "blue"))+
  labs(y = "DON (ppm)", x = "") +
  theme_classic()
plot1

#3. plot 2 represents barchart
plot2 <- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
  stat_summary(fun = mean,
               geom = "bar",
               position = position_dodge(width = 0.8)) +
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.2,
               position = position_dodge(width = 0.8)) +
  labs(y = "DON (ppm)", x = "") +
  theme_classic()

plot2
#4. adding jitter
plot1<- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
  geom_boxplot() + 
  geom_point(position = position_jitterdodge(), shape = 21,
             fill = "black") +
  scale_fill_manual(values = c("TRUE" = "pink",
                               "FALSE" = "blue"))+
  labs(y = "DON (ppm)", x = "") +
  theme_classic()
plot1

plot2 <- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
  geom_point(position = position_jitterdodge(),shape = 21,
             fill = "black") +  
  stat_summary(fun = mean,
               geom = "bar",
               position = position_dodge(width = 0.8)) +
  stat_summary(fun.data = mean_se,
               geom = "errorbar",
               width = 0.2,
               position = position_dodge(width = 0.8)) +
  labs(y = "DON (ppm)", x = "") +
  theme_classic()
plot2

  #5. facet
plot1<- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
  geom_boxplot() + 
  geom_point(position = position_jitterdodge(), shape = 21,
             fill = "black") +  
               scale_fill_manual(values = c("TRUE" = "pink",
                                            "FALSE" = "blue"))+
               labs(y = "DON (ppm)", x = "") +
               facet_wrap(~Cultivar)+
               theme_classic()
             plot1
             
             
# adding facet to plot 2 
             plot2 <- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
               geom_point(position = position_jitterdodge(),shape = 21,
                          fill = "black") +  
               stat_summary(fun = mean,
                            geom = "bar",
                            position = position_dodge(width = 0.8)) +
               stat_summary(fun.data = mean_se,
                            geom = "errorbar",
                            width = 0.2,
                            position = position_dodge(width = 0.8)) +
               facet_wrap(~Cultivar)+
               labs(y = "DON (ppm)", x = "") +
               theme_classic()
             plot2
#6. transparency
             plot1<- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
               geom_boxplot() + 
               geom_point(position = position_jitterdodge(), shape = 21,
                          fill = "black", alpha = 0.5, ) +  
               scale_fill_manual(values = c("TRUE" = "pink",
                                            "FALSE" = "blue"))+
               labs(y = "DON (ppm)", x = "") +
               facet_wrap(~Cultivar)+
               theme_classic()
             plot1

             #plot 2
             plot2 <- ggplot(df, aes(x = Treatment, y = DON, fill = Cultivar== "Wheaton")) +
               geom_point(position = position_jitterdodge(),shape = 21,
                          fill = "black", alpha = 0.5) +  
               stat_summary(fun = mean,
                            geom = "bar",
                            position = position_dodge(width = 0.8)) +
               stat_summary(fun.data = mean_se,
                            geom = "errorbar",
                            width = 0.2,
                            position = position_dodge(width = 0.8)) +
               facet_wrap(~Cultivar)+
               labs(y = "DON (ppm)", x = "") +
               theme_classic()
             plot2
             