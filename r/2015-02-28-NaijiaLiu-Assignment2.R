> d=read.csv(file.choose())
> f <- d[2:41,]
> View(f)
> View(f)
> dead <- as.character(f$case.fatality.rate)
> library(stringr)
> dead <- str_replace_all(dead,"%","")
> View(f)
> View(d)
> contagion <-as.character(f$average.basic.reproductive.rate)
class(f$primary.mode.of.transmission)
transmission <-str_replace_all(f$primary.mode.of.transmission, "airborne droplet", "airborne")

f$contacat[as.numeric(contagion<=1)] <- "not very"
f$contacat[as.numeric(contagion>1 & contagion<=5)] <- "quiet contagious"
f$contacat[as.numeric(contagion>5 & contagion<=7)] <- "very"
f$contacat[as.numeric(contagion>7 & contagion<=12)] <- "highly"
f$contacat[as.numeric(contagion>12)] <- "Vaccinate now"

f$deadcat[as.numeric(dead<=1)] <- "not too deadly"
f$deadcat[as.numeric(dead>1 & dead<=20)] <- "quiet deadly"
f$deadcat[as.numeric(dead>20 & dead<=50)] <- "deadly"
f$deadcat[as.numeric(dead>50 & dead<=100)] <- "extremely deadly"



library(QMSS)
library(ggplot2)
library(scales)
 p<-ggplot(data=f, aes(x=as.numeric(contagion), y=as.numeric(dead)/100, label=f$X, group =transmission, colour=transmission)) +geom_point(size=5)
 p +geom_text(hjust=0,vjust=0,size=3) +scale_y_continuous(labels=percent,breaks=c(0,0.0001, 0.01,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)) +scale_x_continuous(limits=c(0, 20), breaks=0:17, expand=c(0,0)) +geom_hline(yintercept=0.01) +geom_hline(yintercept=0.2,alpha=0.5) +geom_hline(yintercept=0.5, alpha=0.5) +geom_vline(xintercept=1) +geom_vline(xintercept=5,colour="grey",alpha=1) +geom_vline(xintercept=7,colour="grey",alpha=1) +geom_vline(xintercept=12,colour="grey", alpha=1) +xlab("Contagiousness") +ylab("Deadliness") +annotate("rect", xmin = 0, xmax = 17, ymin = 0.2, ymax = 0.5, alpha=0.1, fill="red") +annotate("rect", xmin = 0, xmax = 17, ymin = 0, ymax = 0.01,alpha = .2) + annotate("text", x = 0.5, y = 1.1, label = "not very", size=4) +annotate("text", x = 3, y = 1.1, label = "quiet contagious", size=4) +annotate("text", x = 6, y = 1.1, label = "very", size=4)+annotate("text", x = 9.5, y = 1.1, label = "highly", size=4) +annotate("text", x = 14.5, y = 1.1, label = "Vaccinate now", size=4) +annotate("text", x = 18.5, y = 0.005, label = "not too deadly", size=4) +annotate("text", x = 18.5, y = 0.105, label = "quiet deadly", size=4)+annotate("text", x = 18.5, y = 0.35, label = "deadly", size=4)+annotate("text", x = 18.5, y = 0.75, label = "extremely deadly", size=4) +theme_bw()

scale_y_0.001()(labels = percent)
  
  theme_bw(10)
    
  facet_grid(.~contacat) +theme(strip.text.x = element_text(colour="black",size=5, hjust=1, vjust=0.5))


