test <- subset(worker, subset = Number_of_advertisments_posted == "")
nrow(worker)-nrow(test)
nrow(subset(worker, subset = User_ID != ""))


# worker$Points_Rank <- as.numeric(worker$Points_Rank)
#      deal with value "a" "" and  1 196   1 215   1 437   1 626 see blanks in values

# Conver a values to zero

x <- worker
x$Points_Rank <- gsub(pattern = "a",
                      replacement = "0",
                      x$Points_Rank)
x$Points_Rank <- gsub(pattern = " ",
                      replacement = "",
                      x$Points_Rank)
x$Points_Rank <- as.integer(x$Points_Rank)

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


#looking for

def fill_gender_na(row):
     if row['Sexual_orientation'] == 'Homosexual':
     if row['Looking_for'] == 'Men':
     return 'male'
elif row['Looking_for'] == 'Women':
     return 'female'
elif row['Sexual_orientation'] == 'Heterosexual':
     if row['Looking_for'] == 'Men':
     return 'female'
elif row['Looking_for'] == 'Women':
     return 'male'

return np.nan

looking <- function(sex, orientation){

}

# location
df['Location'].fillna(df['Location'].mode()[0], inplace=True)

