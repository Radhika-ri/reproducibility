# 1. Explain

#### a) YAML header: YAML contains the arguements like title, author, date demarcated by three dashes — on both ends. this is displayed at the begining of the document.

#### b) Literate programming :

# 2. Question

[data for the manuscript is
here.](https://doi.org/10.1094/PDIS-06-21-1253-RE)

``` r
df<- read.csv("MycotoxinData.csv", na.strings = "na")
```

``` r
library(ggplot2)
```

    ## Warning: package 'ggplot2' was built under R version 4.5.2

``` r
plot_box<- ggplot(df, aes(x = Treatment, y= DON, fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("DON (ppm)")+
  facet_wrap(~Cultivar)+
  theme_classic()
  
plot_box
```

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](cpding-challenge-4_files/figure-gfm/DON%20data-1.png)<!-- -->

``` r
plot_X <- ggplot(df, aes(x = Treatment, y= X15ADON , fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("15ADON")+
  facet_wrap(~Cultivar)+
  theme_classic()
plot_X
```

    ## Warning: Removed 10 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 10 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](cpding-challenge-4_files/figure-gfm/15ADON-1.png)<!-- -->

``` r
Plot_M<- ggplot(df, aes(x = Treatment, y= MassperSeed_mg , fill= Cultivar))+
  geom_boxplot()+
  scale_fill_manual(values = c("#0072B2","#E69F00"))+
  geom_point( position= position_jitterdodge(), color="black", alpha= 0.6)+
  xlab("")+
  ylab("Seed Mass (mg)")+
  facet_wrap(~Cultivar)+
  theme_classic()

Plot_M
```

    ## Warning: Removed 2 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

    ## Warning: Removed 2 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

![](cpding-challenge-4_files/figure-gfm/Seedmass-1.png)<!-- -->

``` r
library(ggplot2)
library(ggpubr)
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
fig2 
```

![](cpding-challenge-4_files/figure-gfm/arranging%20all-1.png)<!-- -->
