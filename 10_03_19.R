# subsets

# dataframe[]

mtcars <- mtcars

first_col <- mtcars[, 1]

everything_but_first <- mtcars[-1]

# rows 1 - 3, all coml
mtcars[c(1 : 3), ]

# exclude 1 - 3
mtcars[ - c(1 : 3), ]

# exclude rows 1 - 10, cols 1 - 4
mtcars[ - c(1 : 10), - c(1 : 4)]

# get all columns except mpg
names(mtcars)
names(mtcars) != 'mpg'
mtcars[, names(mtcars) != 'mpg']

# exclude "mpg" and "cyl"
mtcars[! names(mtcars) %in% c('mpg', 'cyl')]


# %in%
vec1 <- c(1, 3, 5, 7, 9)
vec2 <- c(5 : 7)

vec1 %in% vec2

vec1[vec1 %in% vec2]

sum(vec1 %in% vec2)

intersect(vec1, vec2)

# mtcar where gear is 4 or 6

mtcars[! mtcars$gear %in% c(4, 6), ]

 and / or

# &
# |

#mtcars where gear is four or carb is 1

mtcars[mtcars$gear == 4 |  mtcars$carb == 1, ]

# where cyl is 6 and carb is 1

mtcars[mtcars$cyl == 6 & mtcars$carb == 1, ]


# wt where cyl is 6
mtcars$wt[mtcars$cyl == 6]

# all cols where cyl is 4 or wt is greater than two

mtcars[ mtcars$cyl == 4 | mtcars$wt > 2, ]

# anon functions

apply(mtcars, 2, mean)

apply(mtcars, 2, function(x){
  mean(x) + 1
})


apply(mtcars, 2, function(x){
  max(x) - min(x)
})

myvec <- c(1 : 10)

# if greater than 5 set to 1, other 0

ifelse(myvec > 5, 1, 0)

sapply(myvec, function(x){
  ifelse(x > 5, 1, 0)
})

# factors
my_data <- rep( letters[1 : 4], 4)

# creates "buckets" for similar data
as.factor(my_data)

library(tidyverse)

mtcars %>% ggplot(aes(x = mpg, y=drat, color = factor(gear))) + 
  geom_point()






