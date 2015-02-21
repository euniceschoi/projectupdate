install.packages("ggmap")
install.packages("maptools")
install.packages("maps")
library("ggmap")
library("maptools")
library("maps")

Acinonyx_jubatus <- c("Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Central African Republic", "Chad", "Congo", "Ethiopia", "Iran", "Kenya", "Mozambique", "Namibia", "Niger", "Somalia",  "South Africa", "South Sudan", "Sudan", "Tanzania")
ll.Acinonyx_jubatus <- geocode(Acinonyx_jubatus)
View(ll.Acinonyx_jubatus)

Acinonyx_jubatus.x <- ll.Acinonyx_jubatus$lon
Acinonyx_jubatus.y <- ll.Acinonyx_jubatus$lat
map("world", fill=TRUE, col="white", bg="lightblue", ylim=c(-60, 90), mar=c(0,0,0,0))
points(Acinonyx_jubatus.x,Acinonyx_jubatus.y, col="red", pch=16)
