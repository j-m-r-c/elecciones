library(shiny)
#library(shinythemes)
#library(SixSigma)
#library(dbConnect)
library(RSQLite)

# Define UI ----
ui <- fluidPage(
  titlePanel("Elecciones"),
  br(),
  fluidRow(
    column(4,
           actionButton("nuevo_reg","Nuevo"),
           actionButton("editar_reg","Editar"),
           actionButton("borrar_reg","Borrar")
    )
  ),
  
  br(),
  br(),
  
  h2("Nuevo"),
  fluidRow(
    column(4,
           selectInput("select", label = h3("Cargo"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Estado"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Municipio"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Distrito"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Seccion"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Casilla"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Partido"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           selectInput("select", label = h3("Coalicion"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                       selected = 1),
    ),
    column(4,
           textInput("inputIdvoto", label = h3("Votos"), value=""),
    ),
  )
)

# Define server logic ----
server <- function(input, output) {
  
  output$value <- renderPrint({ input$select })
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
