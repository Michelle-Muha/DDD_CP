library(shiny)

shinyServer(function(input, output) {
  answers <- c("Signs point to yes.", "Yes.",
                "Reply hazy, try again.",
               "Without a doubt.",
                "My sources say no.",
                "As I see it, yes.",
                "You may rely on it.",
                "Concentrate and ask again.",
                "Outlook not so good.",
                "It is decidedly so.",
                "Better not tell you now.",
                "Very doubtful.",
                "Yes - definitely.",
                "It is certain.",
                "Cannot predict now.",
                "Most likely.","Ask again later.","My reply is no.", "Outlook good.", "Don't count on it")
  
  output$text <- renderText({ 
    n <- nchar(input$question)
    if (n>20)  {n <- n-20}
    if (n>40)  {n <- n-40}
    answers[n]
  })
  


})