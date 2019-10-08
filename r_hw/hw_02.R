mtcars <- mtcars

#PART 1

#A. Extract cases where cyl is 4
mtcars[mtcars$cyl == 4, ]

#B. Exclude only rows 1 -> 4
mtcars[-c(1 : 4), ]

#C. Return only rows for cylinders less than 5
mtcars[mtcars$cyl < 5, ]

#D. Return only rows for cyl that are 4 or 6
mtcars[mtcars$cyl == 4 | mtcars$cyl == 6, ]

#E. Return only rows where disp is 160
mtcars[mtcars$disp == 160, ]




#PART 2

#A. Write a command that returns the mean of every column
apply(mtcars, 2, function(x){
  mean(x)
})

#B. Write a command that returns the sum of every row
apply(mtcars, 1, function(x){
  sum(x)
})




#PART 3

#Using apply() and ifelse(), write a command that does the following
#apply an anon function on every column in mtcars. if the min val of the col
#is less than ten, the fucnction returns the mean val of the col
#otherwise the function is less than ten 

apply(mtcars, 2, function(x){
  ifelse(min(x) < 10, mean(x), 100)
})


