library(shiny)
BodyMassIndex <- function(weight, height) weight/((height/100)*(height/100))
Explanation   <-function(weight, height) {if (weight/((height/100)*(height/100)) < "18") print("underweight") else
                                                          if (weight/((height/100)*(height/100)) < "25") print("normal") else 
                                                                         if (weight/((height/100)*(height/100)) < "30") print("overweight") else print ("obese")
}                         
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$weight})
    output$inputValue <- renderPrint({input$height})
    output$prediction <- renderPrint({BodyMassIndex(input$weight, input$height)})
    output$predictionexplanation <- renderPrint({Explanation(input$weight, input$height)})
  }
)