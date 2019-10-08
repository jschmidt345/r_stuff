#lists 

#tuesday midterm review

#cannot use absoulte path, must use a relative path

# Vecotrs vs Lists

# vectors : not worried about structure of data

# lists : clearlu defined structrue, order matters, lists can hold other data structures, like a list of vectors. Would keeo a the vectors separate 


n <- c(2, 3, 5)
s <- c('aa', 'bb', 'cc', 'dd', 'ee')
b <- c(TRUE, FALSE)


#list
x <- list(n, s, b, 3)

# keeps all data structures whole, just holds them together

# returns 2, 3, 5
x[c(2, 4)]

# isolate the first element of x
x[[1]]

# to access first first element
x[[1]][1]

# first vector element form the second list itme
x[[2]][1]

# how many vector elemts in the third item
length(x[[3]])

cars <- mtcars

#row 1 col 1
cars[1, 1] <- 'a'

# change first element of second list item from aa to ta

x[[2]][1] <- 'ta'

