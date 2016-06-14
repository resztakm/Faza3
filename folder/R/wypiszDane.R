#' Funckja wypisuje ilosc komentarzy, udostepnien oraz ilosc polubień dla wybranego banku
#'
#'
#'
#'@export



wypiszDane <- function(typ, bank, info) {

   dane <- info[[bank]][info[[bank]][, typ] > 0, c("date", typ)]
   colnames(dane)[2] <- "from_id"
   
   if (typ == "comments_count") ylab <- "Ilość komentarzy"
   if (typ == "shares_count")   ylab <- "Ilość udostępnień"
   if (typ == "like_count")     ylab <- "Ilość polubień"
   
   title <- paste0(ylab, " - ", bank)
   crit = mean(dane$from_id) + 3 * sqrt(var(dane$from_id))
   
   o <- order(dane$from_id, decreasing = T)
   dane <- dane[o,]
   Daty = dane[dane$from_id > crit, "date"]
   
   list(dane = dane, ylab = ylab, title = title, crit = crit, 
        Daty = Daty)
}