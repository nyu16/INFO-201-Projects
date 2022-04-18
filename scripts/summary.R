## Creates a list of summaries

describeData <- function(data) {
  ret <- list();
  ret$reports <- data %>% nrow()
  ret$USA <- data %>% filter(Country == "USA") %>% nrow()
  ret$WA <- data %>% filter(Country == "USA", State == "WA") %>% nrow
  return(ret)
}  
  
