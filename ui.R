library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("IRIS data Prediction Assignment using Shiny"),
    sidebarPanel(      
      #textInput(inputId="Sepal Length", label="Input Text1"),
      #textInput(inputId="text2", label="Input Text2"),
      numericInput(inputId='Sepal.Length',label='Sepal Length',value=5,min=4.3, max=7.9, step=0.1),
      numericInput(inputId='Sepal.Width',label='Sepal Width',value=2.5,min=2, max=4.4, step=0.1),
      numericInput(inputId='Petal.Length',label='Petal Length',value=2,min=1, max=6.9, step=0.1),
      numericInput(inputId='Petal.Width',label='Petal Width',value=1,min=0.1, max=2.5, step=0.1),
      submitButton('Submit')
      #actionButton("goButton","Go!")
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      p('Sepal Length'),
      textOutput('sepalLen'),
      p('Sepal Width'),
      textOutput('sepalWid'),
      p('Petal Length'),
      textOutput('petalLen'),
      p('Petal Width'),
      textOutput('petalWid'),
      #p('Inside text, but non-reactive'),
      #textOutput('text5'),            
      h4('Which results in a prediction of '),
      textOutput("Species")
      )   
  ))