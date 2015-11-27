library(xlsx)
G <- read.csv('Documents/NYU/PUI/plot/201501-citibike-tripdata.csv')
qw <- c('tripduration')
library(gcookbook)
library(ggplot2)

uspopage<-gcookbook::uspopage
p <- ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area()
cb_palette2 <- c("#F0E442", "#56B4E9", "#009E73", "#0072B2", "#FF8000","#FFCCFF", "#4C0099", "#999999")
p + ggtitle("US Population of Different Agegroup between 1900-2000")+ scale_fill_manual(values=cb_palette2)
