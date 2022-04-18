library(dplyr) 
## library(microbenchmark), if something goes wrong with the results.

## This code only work when all members have saved their results.


## Load your results here
## Since all of our variables have the same name 'compare',
## make sure to save your results in another variable,
## because each time it is loaded, 'compare' gets rewritten

## Franklin's results
load(file = "franklin_results.Rdat")
franklin <- compare

## I suggest saving yours to a variable of your name
##....

load(file = "margaret_results.Rdat")
margaret <- compare

load(file = "alanna_results.Rdat")
alanna <- compare

load(file = "nick_results.Rdat")
nick <- compare

## Removes the last 'compare' because it's useless
rm(compare)

## Joining (need all results first)
all <- bind_cols(alanna, franklin, margaret, nick)
colnames(all) <- c("Index Trial #1", "Filter Trial #1", "Index Trial #2", "Filter Trial #2",
                   "Index Trial #3", "Filter Trial #3", "Index Trial #4", "Filter Trial 4")

## Prints the complied table

print(all)






