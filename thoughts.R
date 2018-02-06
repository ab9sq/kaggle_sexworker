test <- subset(worker, subset = Number_of_advertisments_posted == "")
nrow(worker)-nrow(test)
nrow(subset(worker, subset = User_ID != ""))


# worker$Points_Rank <- as.numeric(worker$Points_Rank)
#      deal with value "a" "" and  1 196   1 215   1 437   1 626 see blanks in values

#worker$Number_of_Comments_in_public_forum <- as.numeric(worker$Number_of_Comments_in_public_forum)
#    deal with "" 1 174   1 275   1 894  2 062

#worker$Age <- as.numeric(worker$Age)
#   Need to convert , to . as characters before converting to a number

x <- worker

x$Number_of_Comments_in_public_forum <- gsub(pattern = " ",
                                             replacement = "",
                                             x$Number_of_Comments_in_public_forum)

x$Number_of_Comments_in_public_forum <- gsub(pattern = ",",
          replacement = ".",
          x$Number_of_Comments_in_public_forum)
x$Number_of_Comments_in_public_forum <- as.numeric(x$Number_of_Comments_in_public_forum)

Z <- subset(x, is.na(Number_of_Comments_in_public_forum))
