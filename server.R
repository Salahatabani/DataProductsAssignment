shinyServer(function(input, output) {

   #model<-lm(mpg ~ factor(cyl) + hp + wt + am, data = mtcars)
   
    output$cylinderso <- renderPrint({input$cylinders})
    output$transmissiono <- renderPrint({input$transmission})
    output$weighto <- renderPrint({input$weight})  
    output$hpo <- renderPrint({input$hp})

    
    predictModel <- reactive({
      new<-data.frame(cyl=factor(input$cylinders),hp=input$hp,wt=input$weight,am=factor(input$transmission))
      a<-lm(mpg ~ factor(cyl) + hp + wt + factor(am), data = mtcars)
      predict(a,newdata=new, interval="predict")
    })
  
    output$model <- renderPrint({
     predictModel()
    
    })      

    
}
)