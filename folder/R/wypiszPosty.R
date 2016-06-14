#' Funkcja wypisuje wybraną ilość postów dla wybranego banku
#'
#'
#'@export



wypiszPosty <- function(bank, daty, ilosc){
   
   posty <- (info[[bank]][info[[bank]]$date == daty[1], ])
   
   m <- min(nrow(posty), ilosc)
   
   paste(posty$date[1:m], "</br>", posty$body[1:m], "</br>")
}