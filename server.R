shinyServer(function(input, output, session) {
  selectedData <- reactive({
    dataset <- head(iris, n = input$obs)
    dataset[, c(input$xcol, input$ycol)]
  })
  selectedData2 <- reactive({
    dataset <- head(iris, n = input$obs)
     })
  output$plot1 <- renderPlot({
    dataset <- head(iris, 12)
    plot(selectedData(),col = iris$Species,pch = 20, cex = 3)
  })  
  output$plot2 <- renderPlot({
    dataset <- head(iris, 12)
    plot(selectedData2(),col = iris$Species,pch = 20, cex = 3)
  })  
  output$summary <- renderPrint({
    dataset <- iris
    summary(dataset)
  })
  output$view <- renderTable({
    head(iris, n = input$obs)
  })
})
