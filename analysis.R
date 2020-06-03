library(tidyverse)
#Aggregieren
tabelle1<-diamonds%>%
  group_by(cut)%>%
  summarise(n=n(),mean_price=mean(price))
#Erstellen eines Balkendiagrams
p1<-tabelle1%>%
  ggplot(.,aes(x=cut,y=mean_price))+
  geom_bar(stat = "identity")

