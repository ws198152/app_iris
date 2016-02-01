shinyUI(pageWithSidebar(
  headerPanel('Iris DataSet'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput("obs", "Number of observations to view:", 120),
    verbatimTextOutput("summary"),
    h6(tableOutput("view"))
             ),
  mainPanel(
    fluidRow(
      column(6,
             plotOutput('plot1')
      ),
      column(6,
            img(src="2015.png", height = 300, width = 380)
      )       
    ),
    plotOutput('plot2')
    
      )
  ))
