shinyServer(function(input, output) {
  table_data <- df
  
  names(table_data) <-
    c(
      "County",
      "Year",
      "Population",
      "Crime Counts",
      "Crime Rate",
      "Violent Crime Counts",
      "Violent Crime Rate",
      "Property Crime Counts",
      "Property Crime Rate",
      "Firearm Counts",
      "Firearm Rate"
    )
  
  table_data <- table_data %>%
    select(
      "County",
      "Year",
      "Population",
      "Crime Counts",
      "Crime Rate",
      "Violent Crime Counts",
      "Violent Crime Rate",
      "Property Crime Counts",
      "Property Crime Rate"
    )
  
  output$mytable = DT::renderDataTable({
    table_data
  })
  
  graphMap <- function(var, year) {
    data <- df %>% filter(Year == year)
    full_data <- left_join(NY, data)
    if (var == "Violent.Rate") {
      gg <-
        ggplot(full_data,
               aes(
                 long,
                 lat,
                 group = group,
                 fill = Violent.Rate,
                 text = County
               ))
    } else if (var == "Property.Rate") {
      gg <-
        ggplot(full_data,
               aes(
                 long,
                 lat,
                 group = group,
                 fill = Property.Rate,
                 text = County
               ))
    } else {
      gg <-
        ggplot(full_data,
               aes(
                 long,
                 lat,
                 group = group,
                 fill = Firearm.Rate,
                 text = County
               ))
    }
    gg <-
      gg + geom_polygon(col = "white") + labs(fill = var) + coord_map() + ggtitle("Crime Rates") +
      theme(axis.title.x=element_blank(), axis.title.y=element_blank())
    ggplotly(gg)
  }
  
  currentGraph <-
    reactive({
      graphMap(input$crimeChoices, input$animation)
    })
  
  output$graph <- renderPlotly(currentGraph())
})