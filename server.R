# load libraries
library(shiny)
## library(googleVis)
# calculation fuctions
c2 <- function(a, b) a^2+b^2

# begin shiny server
shinyServer(function(input, output) {
        output$c2 <- renderPrint({c2(input$a, input$b)})
})