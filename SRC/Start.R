# Makes an initial package ready for further refinement
#
# This is example code for the start of package writing.
# The aim is to motivate thinking about generating a set of
# R packages to support datascientists interested with kicking off
# their Learning Analytics efforts

# Exercise 1: Discuss the packages you think are necessary
# Exercise 2: Generate package(s) using the code below
# Exercise 3: Discuss the functions in the package necessary
# Exercise 4: Add dummy functions and update documentation using Roxygen2 and the document() command
# Exercise 5: Add tests for the dummy functions
# Exercise 6: Write you first functioning methods.
#
# Iterate

## Resources
# http://kbroman.org/pkg_primer/pages/docs.html



# Alan Berg
# a.m.berg AT uva.nl

# Configuration, please change
#

# Top level directory for your work
mydir<-"/home/alan/Desktop/PACKAGES"

mypackage<-"LAtutorial" # Name of package
myname<-"Alan Mark Berg" # Package owner"
mypackageloc<-paste(mydir,"/",mypackage, sep="") # Dir location of package to be created

# Let's make the package programatically
# You will need to fill in inputs as commands are run.
# If you are using R studio then the session might restart a number of times.
#
# https://www.rdocumentation.org/packages/devtools/versions/2.0.1
library(devtools)

setwd(mydir)

# Note whle creating a package changes the working directory
# And should bnot be under an R project in the mydir directory
# Will start up R studio in the mypackage directory
# You will have to load in the Start.R code into R studio and keep running
create_package(mypackage)

# Look at what has been created
dir(mypackageloc)

use_code_of_conduct() # Code of conduct
use_git() # .gitignore
use_testthat() # Testing framework

# Create and save example data
exampleData<-data.frame(users=c("Alan","Mark"), grade=c(1,10))
use_data(exampleData)

# Add to R/exampleData.R
# The following documentation

#' Test Data
#'
#' Provides example data for LA experimentation
#'
#' @format A data frame with 2 rows and 2 variables:
#' \describe{
#'   \item{users}{username}
#'   \item{grade}{grade range=1..10}
#'   ...
#' }
#' @source \url{http://www.uva.nl/}
"exampleData"

# Create a function then dump to a file in the package
#
introduction<-function(){
  print("LA is ....")
}

dump("introduction", file=paste(mydir,"/",mypackage,"/R/introduction.R", sep=""))

# Create a vignette
use_vignette(mypackage)

# Review the vignettes directory and the automatically generated .Rmd file.

# Create an initial readme
use_readme_md()

# Add a sensible licence
use_apl2_license(name=myname)

# Generate documentation
document(mypackage)
help(introduction)


# Create a description of your pckage
# Add the following text to R/main.R including the comment tage #


#' datasummary: Custom Data Summaries
#'
#' Easily generate custom data frame summaries
#'
#' @docType package
#' @name datasummary
"_PACKAGE"

document(mypackage)

check(mypackage)

# Add one test in  tests/testthat/test_introduction.R

#context("Test introduction")
#
#test_that("introduction() handles errors correctly", {
#  expect_equal(1,1)
#})

# Run tests
test(mypackage)
# Check package
check(mypackage)

# Add some dependencies
use_package("purrr")
# Depends: R (>= 3.1.0)

# Check the test coverage
test_coverage(mypackage)

# Build a binary package
build(mypackage, binary=T)


