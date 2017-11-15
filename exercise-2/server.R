### Exercise 2 ###

library(shiny)
library(ggplot2)

# We'll look into these more next week: http://shiny.rstudio.com/gallery/widget-gallery.html 

# Create a shiny server that creates a scatterplot. 

# It should takes as an input the number of observations, and a color
# It should return a rendered plot

shinyServer(function(input, output) {
  GetDataFrame <- reactive({
    number.observations <- input$numObs
    
    df <- data.frame(rnorm(number.observations), rnorm(number.observations))
    colnames(df) <- c('x', 'y')
    
    return(df)
  })
  
  output$scatter <- renderPlot({
    df <- GetDataFrame()
    color <- input$color
    
    scatter <- ggplot(data = df) +
      geom_point(mapping = aes(x = df$x, y = df$y), color = color, size = 5)  +
      labs(x = 'x', y = 'y')
    
    return(scatter)
  })
})