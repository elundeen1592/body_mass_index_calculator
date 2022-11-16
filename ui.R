library(shiny)
shinyUI(fluidPage(
  titlePanel("Body Mass Index (BMI) Calculator"),
  sidebarLayout(
    sidebarPanel(
      p('Body Mass Index (BMI) is an indicator of health and chronic disease risk that is calculated from the weight and height of a person. BMI is defined as weight divided by the square of the height. It is expressed in units of kg/m2. However, below you will enter your height in feet and inches and your weight in pounds and this BMI calculator will perform the necessary conversions.'),
      p('In the boxes on the left below, please enter your height (in feet and inches) and your weight (in pounds). The Body Mass Index Calculator will automatically derive and display your BMI.'),
      
      numericInput(
        inputId = "heightft",
        label = strong("Your Height (feet):"),
        value = 5
      ),
      
      numericInput(
        inputId = "heightin",
        label = strong("Your Height (inches)"),
        value = 4
       ),
      
      numericInput(
        inputId = "weight",
        label = strong("Your Weight (pounds):"),
        value = 140,
        step  = 1
      ),
      img(src="Weight_cat.png", height = 300, width = 500)
    ),
    
    mainPanel(
      uiOutput("bmicat"),
      img(src="BMI_chart.png", height = 800, width = 1200)
    )
  )
))



