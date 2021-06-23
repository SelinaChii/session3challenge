server <- function(input, output) {
  
  output$display <- renderText({
    paste("value = ", myImage(),",", mySlider())   
  })
  
  #reactive function here
  mySlider <- reactive({
    if(
      input$slider<=200 & input$select!=0) {paste0("small")}
    else if(
      input$slider>=600 & input$select!=0) {paste0("large")}

    else if(
      input$select!=0) {paste0("medium")}
    else{paste0("None")}

      
  })
  
  myImage <- reactive({
    
    paste0("image_",input$select,".jpg")
  })
  
  #renderUI here
  
  output$image <- renderUI({
    if(input$select!=0)
    {img(src=myImage(),height=input$slider)}
  })
}
