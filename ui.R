library(shiny)

ui <- fluidPage(
  titlePanel("Reactive values"),
  sidebarLayout(
    sidebarPanel(
      selectInput("select", 
	        "Choose one:", 
          choices = list("Bunny" = 1, "Fish" = 2, "Grumpy Cat" = 3,"None"=0)
	    ),
      sliderInput("slider",label="Image Height",min=1,max=1000, value=500),
      textOutput("display")
      
    ),
    mainPanel(
      uiOutput("image")
    )
  ))
