#' Funkcja tworzy listę zawierajaca informacje o postach z Facebooka
#'
#' @export

info <- function(){
  info = list()
  info$"ING Bank Śląski" <- dane %>%
    filter(page_name == "INGBankSlaski", is.na(parent_id), from_id != "144808095552639") %>%
    select(date, shares_count, like_count, comments_count, body)
  
  
  info$"BZ WBK" <- dane %>% 
    filter(page_name == "bzwbk", is.na(parent_id), from_id != " 113143203693") %>%
    select(date, shares_count, like_count, comments_count, body)
  
  info$"Alior Bank" <- dane %>%
    filter(page_name == "AliorBankSA", is.na(parent_id), from_id != "366165933177") %>% 
    select(date, shares_count, like_count, comments_count, body)
  info
}