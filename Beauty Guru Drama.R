#Days
Days <- c("8_11","8_12","8_13","8_14","8_15","8_16","8_17","8_18","8_19")

#Beauty Gurus
BeautyGurus <- c("GabrielZamora","MannyMUA","LauraLee","NikitaDragun","JeffreeStar")

#Total Subscribers
GabrielZamoraTotal <- c(440872,440420,437860,435089,433570,432690,432022,431156,429580)
MannyMUATotal <- c(5346963,5346034,5335698,5323345,5317113,5313690,5311614,5307747,5291540)
LauraLeeTotal <- c(5054253,5055900,5045098,5026026,5017383,5012832,5003080,4980333,4901269)
NikitaDragunTotal <- c(1646288,1653385,1654492,1652459,1651837,1651836,1652191,1653253,1652762)
JeffreeStarTotal <- c(9341796,9387669,9432914,9474653,9509468,9540557,9566647,9600278,9662218)

#Matrix
TotalSubs <- rbind(GabrielZamoraTotal,MannyMUATotal,LauraLeeTotal,NikitaDragunTotal,JeffreeStarTotal)
rm(GabrielZamoraTotal,MannyMUATotal,LauraLeeTotal,NikitaDragunTotal,JeffreeStarTotal)
colnames(TotalSubs) <- Days
rownames(TotalSubs) <- BeautyGurus

TotalSubs

matplot(t(TotalSubs), type="b",pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.001, legend=BeautyGurus, col=c(1:4,6), pch=15:18, horiz=F)

#Subscribers +/-
GabrielZamoraFlux <- c(-452,-2560,-2771,-1519,-880,-668,-866,-1576,-2043)
MannyMUAFlux <- c(-929,-10336,-12353,-6232,-3423,-2076,-3867,-16207,-18117)
LauraLeeFlux <- c(1647,-10802,-19072,-8643,-4551,-9752,-22747,-79064,-166234)
NikitaDragunFlux <- c(7097,1107,-2033,-622,-1,355,1062,-491,-2783)
JeffreeStarFlux <- c(45873,45245,41739,34815,31089,26090,33631,61940,75098)

#Matrix
TotalFlux <- rbind(GabrielZamoraFlux,MannyMUAFlux,LauraLeeFlux,NikitaDragunFlux,JeffreeStarFlux)
rm(GabrielZamoraFlux,MannyMUAFlux,LauraLeeFlux,NikitaDragunFlux,JeffreeStarFlux)
colnames(TotalFlux) <- Days
rownames(TotalFlux) <- BeautyGurus

matplot(t(TotalFlux), type="b",pch=15:18, col=c(1:4,6))

FluxProportion <- round(TotalFlux/TotalSubs,5)*100

matplot(t(FluxProportion), type="b",pch=15:18, col=c(1:4,6),
  main = "Beauty Guru Subscribers",xlab = "Days Since Gabriel's Tweet",ylab = "Total % of Subs Gained/Lost"
  )
legend("bottomleft", inset=0.001, legend=BeautyGurus, col=c(1:4,6), pch=15:18, horiz=F
  )