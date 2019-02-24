***In support of the LAK19 Hackathon***

# Package-Hackathon-LAK19

A space to conceptualize the use of an R package(s) to support domain specific issues within the field of Learning Analytic’s.

# Background

Data Scientists use tools to make their tasks easier. These tools may include GUI based systems such as SPSS and programmatic languages such as R and Python. To ease the learning curve for the implementation of Learning Analytic workflows, often known as pipelines researchers can develop example library(s), that provide a fully functioning pipeline. The purpose of the libraries being first to entice data scientists into the field and secondly to provide functionality that supports reproducible science.

# Research Questions

- *What is a Learning Analytic workflow in the context of programmatic Datascience?*
- *Which functions are necessary to decrease the number of lines of code to achieve the full workflow?*
- *Which freely available LA related data sources already exist that libraries can pull into the developer's environment via helper functions?*
- *What is the relationship between an LA  targeted library and commonly used libraries in the Tidyverse and Caret?*
    
# Expected Outcomes

Consider initially developing dummy functions with documentation so as to scope out the core features of the library. Secondary, code the core feature set. 

The main outcome is an initial R or Python library with many dummy functions scoping the broad range of functionality needed by data scientists to easily transition to coding Learning Analytic pipelines. Each function dummy or functional being fully documented so that in follow-on Hackathons the participants understand the intent. The initial package should contain fully descriptive documentation and stored in this open GitHub [repository](https://github.com/AlanBerg/Package-Hackathon-LAK19).

# Structure of Repositiory

- **DOC:** Where you keep your notes and other documentation
- **SRC:** Source code
- **DATA:** Where you keep your data or package binaries

# Exercises

Makes an initial package ready for further refinement.

SRC/start.R is example code for the start of package writing. The aim is to motivate thinking about generating a set of R packages to support datascientists interested with kicking off their Learning Analytics efforts

1. Discuss the packages you think are necessary
2. Generate package(s) using SRC/start.R
3. Discuss the functions in the package necessary
4. Add dummy functions and update documentation using Roxygen2 and the document() command
5. Add tests for the dummy functions
6. Write you first functioning methods.

***Iterate***

# Resources

1. [Basic Tuorial](https://www.datacamp.com/community/tutorials/r-packages-guide)
2. [Basic tutorial for writing packages](https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/)
3. [Extensive documentation](http://r-pkgs.had.co.nz/). Consider buying the book.
4. [Testing](http://r-pkgs.had.co.nz/tests.html)
