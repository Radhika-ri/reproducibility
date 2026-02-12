#in class coding challenge- vis 2
#1. boxplot 
df<- read.csv("MycotoxinData.csv", na.strings = "na")
cbbPalette
# adding levels and plotting graph for first question and second questioin
df$Treatment<- factor(df$Treatment, levels = c("NTC", "Fg", "Fg + 37" , "Fg + 40", "Fg + 70"))
plot_box<- ggplot(df, aes(x = Treatment, y= DON, fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("DON (ppm)")+
  facet_wrap(~Cultivar)+
  theme_classic()
  
plot_box

df
head(df)
# QUESTION 3

plot_X <- ggplot(df, aes(x = Treatment, y= X15ADON , fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("15ADON")+
  facet_wrap(~Cultivar)+
  theme_classic()

Plot_M<- ggplot(df, aes(x = Treatment, y= MassperSeed_mg , fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("Seed Mass (mg)")+
  facet_wrap(~Cultivar)+
  theme_classic()

# question 4
fig<- ggarrange( plotlist = plot_box, plot_X, Plot_M, 
                     labels ="auto",
                     nrow = 1, 
                     ncol = 3,
                 common.legend = T
)
#common.legend helped in better visualization of the plots. plots were more evenly distributed.In help , they said it helps in creating unique legend. 
help("ggarrange")

#question 5 

P1<-plot_box +
  geom_pwc(aes(group = Treatment ),method = "t_test", label = "p.adj.format")
P2<-plot_X + 
  geom_pwc(aes(group = Treatment ),method = "t_test", label = "p.adj.format")
P3<-Plot_M+
  geom_pwc(aes(group = Treatment ),method = "t_test", label = "p.adj.format")
# ARRANGING ALL IN  1 FIGURE
fig2 <- ggarrange( plotlist = P1, P2, P3, 
                   labels ="auto",
                   nrow = 1, 
                   ncol = 3,
                   common.legend = T
)
