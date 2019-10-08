#mt cars

mtcars <- mtcars

# summary
summary <- head(mtcars)

car_name <- rownames(mtcars)
stats <- colnames(mtcars)
height <- nrow(mtcars)
width <- ncol(mtcars)


#structure
data_structure <- str(mtcars)

#summary 
descrip <- summary(mtcars)

#subset dataframe

# all rows, one first column
mtcars[1]

mtcars[c(1 : 2), c(1 : 2)]

# isolate column as vector
# dataframe$column
mpg <- mtcars$mpg 

# rows and columns
# df[row, column]

# all rows, first column
mtcars[, 1]

# first row, all columns
mtcars[1, 1]

# mtcars where cyl is 6, first two columns only
cond <- ifelse(mtcars['cyl'] == 6, mtcars[1 : 2], NA)
# or 
mtcars[mtcars$cyl == 6, c(1 : 2)]

# mtcars : all rows where gear = 4, cols = 'cyl' and carb

mtcars[mtcars$gear == 4, c('cyl', 'carb')]

# apply function
# apply(data, key, function)
# key : either a 1 or 2; 1 = row, 2 = column

num_t <- is.numeric(mtcars$mpg)
# looks through every column and looks for is numeric
apply(mtcars, 2, is.numeric)

n_of_numeric <- sum(apply(mtcars, 2, is.numeric))

# use apply to get min val of every row
apply(mtcars, 1, min)

# max of every val in column
apply(mtcars, 2, max)




# visualization
library(tidyverse)

# blank graph
mtcars %>% ggplot() 


# created labels for x and y axes
mtcars %>% ggplot(aes(x = factor(cyl), y = mpg))

# geom = 
mtcars %>% ggplot(aes(x = factor(wt), y = mpg, color=disp, size=hp)) +
  geom_point()








