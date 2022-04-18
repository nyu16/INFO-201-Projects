## Disclaimer: The rubric on Canvas states that the charts should be in one single file.

### Creates a chart showing the number of UFO sightings by state in US
ufo_us_states <- function (data) {
  us_sightings <- data %>%
    filter(Country == 'USA') %>%
    group_by(State) %>%
    count()
  
  state_report <- ggplot(data = us_sightings, aes(x=State, y=n)) + geom_bar (stat = "identity", fill="steelblue") + 
    geom_text(aes(label=n)) +
    theme_minimal() + 
    labs(title = "UFO Sighting in Each State", x = "States", y = "Frequencies") +
    coord_flip()
  state_report
  
}

### Creates a chart showing the frequency each shape of UFO sighting
ufo_shapes <- function(data){
  ufo <- data %>%
    group_by(Shape)%>%
    count()

  report <- ggplot(data = ufo, aes(x=Shape, y=n)) + geom_bar(stat = "identity", fill="steelblue") +
    geom_text(aes(label=n), vjust= 0.5, hjust= -0.5, size=3.5) + 
    theme_minimal() +
    labs(title = "Frequencies of Different UFO Shapes", x = "Different Shapes", y = "Frequencies") +
    coord_flip()
  report 
}