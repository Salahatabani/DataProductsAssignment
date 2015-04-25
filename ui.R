shinyUI(fluidPage(
  
  sidebarLayout(
    
  
    sidebarPanel(
fluidRow(
      radioButtons("cylinders", label = h6("Specify the number of cylinders the car has"),
                   choices = list("4" = 4, "6" = 6,
                                  "8" = 8), selected = 4)),
      
fluidRow( 

            selectInput("transmission", label = h6("Automatic/Manual"), 
                                choices = list("Automatic" = 0, 
                                                   "Manual" = 1), selected = 1)),
      
fluidRow( 
             sliderInput("weight", label = h6("Car weight/tons"),
                         min = 1.5, max = 5.5, value = 3) ),

fluidRow( 
  sliderInput("hp", label = h6("Car hourse power"),
              min = 50, max = 350, value = 200))),
mainPanel(
  
  h3('Car specifications you entered are:'),
  h4('Cylinder type'),
  verbatimTextOutput("cylinderso"),
  h4('Transmission type: automatic/manual:'),
  verbatimTextOutput("transmissiono"),
  h4('Car weight:'),
  verbatimTextOutput("weighto"),
  h4('Car hourse power'),
  verbatimTextOutput("hpo"),
  h3("predicted mpg, lower bound and upper bound"),
  verbatimTextOutput("model")
)
    )))

