shinyUI(
    pageWithSidebar(
    
    headerPanel("Vehicle mpg estimating"),
    
    sidebarPanel(
        selectInput("cyl","NumberOfCylinder",choices=list("4","6","8")),
        numericInput('disp','Please input the displacement value, unit is cu.in. value should be ranged between (50,500).',200,min=50,max=500,step=1),
        numericInput('weight','Please input the weight value, unit is 1000lbs, ranged between(1.5, 5.5)',2,min=1.5,max=5.5,step=0.01),
        checkboxInput("am","manual transmission",value=TRUE),

        submitButton('Submit')
        ),
    mainPanel(
        h3('The estimated mile per gallon of the car:'),
        verbatimTextOutput("estimate"),
        h4('Note: the calculation is based on the linear regression model from data (mtcars) in R.')
        )
    
    ))