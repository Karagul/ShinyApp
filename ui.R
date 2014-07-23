library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("AMD Stock prediction"),
    sidebarPanel(
      numericInput('variation','How many dollars the prize of this shares will move?', 0, step = 1),
     actionButton('Submit', 'Submit')
    ),
    mainPanel(
      h3('Stock prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue_"),
      h4('Ratio of people thinking it will move down'),
      verbatimTextOutput("down_"),
      h4('Ratio of people thinking it will stay equal '),
      verbatimTextOutput("equal_"),
      h4('Ratio of people thinking it will move up '),
      verbatimTextOutput("up_"),
      h4('Total entered '),
      verbatimTextOutput("total_")
     
      
    )
  )
)
