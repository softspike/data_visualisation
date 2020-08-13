library(shiny) # is an R package that helps to build interactive web apps straight from R
library(dplyr) #grammar of data manipulation, providing a consistent set of verbs that help you solve the most common data manipulation challenges
library(ggplot2) #system for declaratively creating graphics
library(shinycssloaders) #for animated css loader


#load/read dataset
allStadData <- read.csv("fifa_stadiums.csv", stringsAsFactors = FALSE)

## ui.R ##
ui <- fluidPage(
  
  ####################################### Comparison histogram menu UI start ######################################
  
  #!!!!enable if histogram does not show integer values
  # disabling scientific notation in R
                    options(scipen = 999),
  
  # * Author:DMCA Information
  # * Retrieval date: 24/5/20
  # * URL: https://1000logos.net/fifa-logo/
  img(src='FIFA.png', height=90, width=100, align = "right"),
  
  titlePanel("Guide to all major Football Stadiums"),
  sidebarLayout( 
    sidebarPanel(
      h4(
        "To select, use the filters below:"),
    
      sliderInput("CapacityInput", "Capacity", 0, 160000, c(0, 27000), pre = "Seats "),
      
      uiOutput("typeSelectOutput"),
      checkboxInput("filterCountry", "Filter by country", FALSE),
      conditionalPanel(
        condition = "input.filterCountry",
        uiOutput("countrySelectorOutput")
      ),
    ),
    
    mainPanel(
      h3(textOutput("summaryText")),
      downloadButton("download", "Download results"),
      br(),
      
      #spinner (loader)  displays when an output is recalculating (set timer = 1 sec.)
      withSpinner((plotOutput("plot")), type = 1),
      br(), br(),
      #tableOutput("Capacitys")
      DT::dataTableOutput("Capacitys")
    )
  ),
  ####################################### Comparison histogram menu UI end ######################################
  
)
  ####################################### Comparison histogram server side start #####################################

## server.R ##

# * Author: Shiny Studio R
# * Retrieval date: 21/5/20
# * URL: https://shiny.rstudio.com/reference/shiny/1.4.0/renderUI.html

server <- function(input, output, session) {
  #render by Country
  output$countrySelectorOutput <- renderUI({
    selectInput("countryInput", "Country",
                sort(unique(allStadData$Country)),
                
                # multiple selections allowed
                multiple = TRUE,
                # pre-set default value
                selected = "Albania")
  })
  
  #render by Confederation
  output$typeSelectOutput <- renderUI({
    selectInput("typeInput", "Confederation",
                sort(unique(allStadData$Type)),
                
                # multiple selections allowed
                multiple = TRUE,
                # pre-set default value
                selected = c("UEFA"))
  })
  
  #render by Confederation for Violin
  output$confSelectOutput <- renderUI({
    selectInput("confInput", "Confederation",
                sort(unique(allStadData$Type)),
                
                # multiple selections allowed
                multiple = TRUE,
                # pre-set default value
                selected = c("UEFA"))
  })
  #wrapping the text summary function
  output$summaryText <- renderText({
    numOptions <- nrow(Capacitys())
    if (is.null(numOptions)) {
      numOptions <- 0
    }
    #display findings
    paste0("Found ", numOptions, " available stadiums")
  })
  
  #use widget input and return a value
  Capacitys <- reactive({
    Capacitys <- allStadData
    if (is.null(input$countryInput)) {
      return(NULL)
    }
    
    #pick rows based on conditions about their values
    Capacitys <- dplyr::filter(Capacitys, Type %in% input$typeInput)
    if (input$filterCountry) {
      Capacitys <- dplyr::filter(Capacitys, Country == input$countryInput)
    }
    Capacitys <- dplyr::filter(Capacitys, Capacity >= input$CapacityInput[1],
                               Capacity <= input$CapacityInput[2])
    
    if(nrow(Capacitys) == 0) {
      return(NULL)
    }
    Capacitys
  })
  
  #creates interactive plot
  output$plot <- renderPlot({
    #intentional delay in the execution of plot (to demo loading spinner)
    Sys.sleep(1)  
    if (is.null(Capacitys())) {
      return(NULL)
    }
    
    # * Author: Willems (2019); How to Make a Histogram with ggplot2 
    # * Retrieval date: 24/5/20
    # * URL: https://www.datacamp.com/community/tutorials/make-histogram-ggplot2?utm_source=adwords_ppc&utm_campaignid=1655852085&utm_adgroupid=61045433982&utm_device=c&utm_keyword=%2Bggplot%20%2Bbinwidth&utm_matchtype=b&utm_network=g&utm_adpostion=&utm_creative=318880582263&utm_targetid=aud-299261629654:kwd-589281897774&utm_loc_interest_ms=&utm_loc_physical_ms=9045353&gclid=CjwKCAjwtqj2BRBYEiwAqfzur6c9ef8ssnh_tON4EgBPX-CMwnudRq63QkEBOlkDxp2uBsIEL8d6sRoCRHwQAvD_BwE
    
    ggplot(data=Capacitys(), aes(x=Capacity, fill = Type)) + labs(x = "Capacity", y ="Number of Stadiums") +
      geom_histogram(colour = "black", binwidth=2000) +
      theme_minimal(base_size = 20, base_family = "sans")
  })
  
  output$Capacitys <- DT::renderDataTable({
    Capacitys()
  })
  
  #allows content from the Shiny application to be made available to the user as file downloads
  output$download <- downloadHandler(
    filename = function() {
      "allStadData-results.csv"
    },
    content = function(con) {
      write.csv(Capacitys(), con)
    }
  )
  
  ####################################### Comparison histogram server side end #######################################
}

shinyApp(ui = ui, server = server)
