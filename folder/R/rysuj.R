#' Funkcja tworzy wykres liczby komentarzy, udostępnień i polubień  
#'
#'
#' @export

rysuj <- function(dane, ylab, title, crit) {
   ggplot(dane, aes(x = as.Date(date), y = from_id, colour = from_id)) + 
      geom_point() + scale_colour_gradientn(colours = rainbow(10), guide = FALSE) + 
      geom_hline(aes(yintercept = mean(from_id)), colour = "blue", linetype = "dashed") + 
      geom_hline(aes(yintercept = crit), colour = "red3", linetype = "dashed") +
      ggtitle(title) + labs(x = "", y = ylab)
}