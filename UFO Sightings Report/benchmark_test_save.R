library(dplyr)
## Don't forget to install microbenchmark before you run this
#install.packages("microbenchmark")
library(microbenchmark)

user <- Sys.info()[["user"]]

#setwd("~/Desktop/a7-collaboration-idomori")

data <- read.csv("USArrests.csv", stringsAsFactors = FALSE)

fun_index <- function() {
  data[data$Murder > 10,]
}

fun_filter <- function() {
  data  %>% filter(Murder > 10)
}


benchmark <- microbenchmark(fun_index(), fun_filter())
benchmark$expr <- as.character(benchmark$expr)

index <- benchmark %>% filter(expr == "fun_index()")
filter <- benchmark %>% filter(expr == "fun_filter()")

compare <- data.frame(index$time, filter$time, stringsAsFactors = FALSE)
colnames(compare) <- c(paste0("indexing", ".", user), paste0("filtering", ".", user))



## directory and filename
if (user == "kongl") {
  PROJECTDIR <- file.path("~", "INFO201", "a7-collaboration-idomori")
  fileName <- "franklin_results.Rdat"
} else if (user == "margarethsiao"){
  PROJECTDIR <- file.path("~", "Desktop", "a7-collaboration-idomori")
  fileName <- "margaret_results.Rdat"
} else if (user == 'alanna') {
  PROJECTDIR <- file.path("~","Desktop","School","Senior\ Year", "Winter\ 18", "INFO_201", "Assignments", "a7-collaboration-idomori")
  fileName <- "alanna_results.Rdat"
} else if (user == 'NickYu') {
  PROJECTDIR <- file.path("~","Documents","Current Classes","INFO 201", "Assignments", "a7-collaboration-idomori")
  fileName <- "nick_results.Rdat"
}

## Your directories


## Please put 'else if' cases here and specify your user name condition and your
## desired directory according to your operating system.

## else if {.....}
## else if {.....}
## else if {.....}

path  <- paste0(PROJECTDIR,"/", fileName)

## Saves your variable by variable name. In this case it is 'compare' for all of us
save(compare, file = path)

## If your save doesn't work because it says something like 'cannot find directory/file'.
## your Rstudio has '~' set to some other directory. Mine is set by default to 'Documents' 
## for some reason, not the actual root. Make sure you know yours.

rm(compare)



