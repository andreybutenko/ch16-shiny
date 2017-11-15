# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  # Add a numbericInput to choose the number of observations
  sliderInput('numObs', 'Number of observations',
               20, 100000, 50, step = 10),
  
  # Add a selectInput that allows you to select a color from a list of choices
  selectInput('color', 'Color',
              c('Red', 'Green', 'Blue', 'Purple')),
  
  # Plot the output with the name "scatter"
  plotOutput('scatter')
  
))