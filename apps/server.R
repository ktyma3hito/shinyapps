library(shiny)

shinyServer(function(input, output) {
  output$car_info <- renderTable({
    selected_car <- input$car
    mtcars[rownames(mtcars) == selected_car, ]
  })
})