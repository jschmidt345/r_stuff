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


# take away list structure

unlist(x)

# Named list
v <- list(vec1=c(2, 3, 5), vec2=c('aa', 'bb'))

v[['vec1']]

# lists of lists

new_l <- list(list(1, 2, 3), list('sun', 'mon', 'stues'))

w <- c(2, 7, 8)
v <- c('a', 'b', 'c', 'a', 'a')
x <- list(w, v)

x[[2]][1] <- 'z'

# change all as to z

a <- which(x[[2]] == 'a')
x[[2]][a] = 'z'

#or

ifelse(x[[2]] == 'z',  'a', x[[2]])

a <- list('x' = 5, 'y' = 10, 'z' = 15)

# sum all the vals

sum(unlist(a))


new_list <- list(a = c(1 : 10), b = 'hello', c = 'hi')

# add 1 to every elemt of newlist

new_list[['a']] <- new_list[['a']] + 1



# add a list element z with a val nbew item
x <- list(a = c(1 : 50), b = 'hello', c = 'hi')

x$z <- 'newitem'



 