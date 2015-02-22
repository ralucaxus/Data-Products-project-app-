library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Body Mass Index Calculation"),
  sidebarPanel(
    textInput(inputId="Age", label = "Input Age"),
    numericInput("height", "Input height in Centimeters", 0, min=100, max=250, step=10),
    numericInput("weight", "Input weight in Kg", 0, min=0, max=1000, step=1),
    checkboxGroupInput("Sex","Chose sex", c("Female" = "Female", "Male"="Male"
                                                     )),
    submitButton('Submit')
    
  ),
  mainPanel(
    h3('Your BMI is '),
    verbatimTextOutput("prediction"),
    verbatimTextOutput("predictionexplanation"),
    h4('How to use the App?  Fill in your age, height, weight, sex and the app will calculate your body mass index and give you an explanation of what it means ')
    
  )
)
)

