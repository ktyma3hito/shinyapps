library(shiny)

shinyUI(
  fluidPage(
    titlePanel("mtcars Dataset"),
    sidebarLayout(
      sidebarPanel(
        selectInput("car", "Car Model:", choices = rownames(mtcars))
      ),
      mainPanel(
        tableOutput("car_info")
      )
    )
  )
)
