#calcul de la moyenne du creedit#
mean(CreditBancaire$Credit)



#calcul de jour moyen de retard par type
library(dplyr)
CreditBancaire%>%group_by(Type)%>%summarise(mean(Jours))


ATR<-CreditBancaire%>%group_by(Type)%>%summarise(mean(Jours))
ATR

#creation d objet contenant les types et leur myenne
f<-c("commerce","consommation","production")
g<-c(80.8 , 66.3 , 95.9 )

#tableau de de la moyenne des jours de ratard par type
ggplot(ATR,aes(f,g))+geom_col(just = 0.5)