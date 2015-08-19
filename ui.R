library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Magic 8 Ball"),
  
  # Sidebar 
  sidebarLayout(
    sidebarPanel(
      textInput("question",
                  "Enter a question", value=""),
      helpText("The Magic 8 Ball will magically predict the answer to your question (actually, it will count the number of characters in your question and respond with an answer randomly assigned to that number)"),
      submitButton("Ask")
    ),
    
    # Show answer
    mainPanel(
      textOutput("text")
    ))
  
))