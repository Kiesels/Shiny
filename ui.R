# load shiny package
library(shiny)
# begin shiny UI
shinyUI(navbarPage("Shiny Project",
                   # Documentation
                   tabPanel("Documentation",
                            # load MathJax library so LaTeX can be used for math equations
                            withMathJax(), h3("Pythagorean theorem"), 
                            # paragraph and bold text
                            p("states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides"),
                            p("The theorem can be written as an equation relating the lengths of the sides a, b and c, often called the Pythagorean equation"),
                            p("The square of hypotenuse $$c^2$$ will be calculated by formula:",
                              "$$c^2 = a^2+b^2$$"),
                            p("Enter the lenght of leg#1 (a)"),
                            p("Enter the lenght of leg#2 (b)"),
                            br(), p(strong("*Source Article:"), br(), "Wikipedia",
                                    "https://en.wikipedia.org/wiki/Pythagorean_theorem")
                            ),
                   # Calcuation
                   tabPanel("Calculation",
                            # input part of the Panel
                                numericInput('a', 'leg#1 (a)', value = NA, min = 0, max = 100, step = 1),
                                numericInput('b', 'leg#2 (b)', value = NA, min = 0, max = 100, step = 1),
                               submitButton('Submit'),                                                                            
                            # Output part of the Panel,
                                h3('Results of calculation'),
                                h4('The square of hypotenuse', '$$c^2$$', ':'),
                                verbatimTextOutput("c2")
                  )
))
