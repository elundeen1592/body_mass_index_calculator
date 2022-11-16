library(shiny)

bmi <- function(heightft, heightin, weight) {
  bmi = (weight*703)/((heightft*12)+heightin)^2
  
  return (bmi)
}

shinyServer(function(input, output) {
  
  output$bmicat <- renderText({
    bmi = bmi(heightft = input$heightft, heightin = input$heightin, weight = input$weight)
    
    if      (bmi <  18.5)              designation = "<span style='color: red'>Underweight</span>"
    else if (bmi >= 18.5 & bmi < 25.0) designation = "<span style='color: green'>Normal weight</span>"
    else if (bmi >= 25.0 & bmi < 30.0) designation = "<span style='color: orange'>Overweight</span>"
    else if (bmi >= 30.0 & bmi < 35.0) designation = "<span style='color: red'>Obesity)</span>"
    else if (bmi >= 35.0)              designation = "<span style='color: red'>Morbid Obesity)</span>"

    paste0("Your Body Mass Index is ", "<code>", round(bmi, 1), "</code>", ", which puts you in the category of: ", designation)
  })  
  
 
})



