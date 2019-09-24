library(tidyverse)

plants <- as_tibble(iris)
mean(plants$Sepal.Length)

# mean for all numeric columns


# filter out non-numeric data
sapply(Filter(is.numeric, plants), mean)

# ranges
range(plants$Sepal.Length)

var <- sapply(Filter(is.numeric, plants), range)

t(var)
var2 <- as_tibble(var)

# frquency distributions

# group_by + summarize

# standard form

#data %>%
  #group_by(column) %>%
  #summarize(newcol= some_function())

# sepal.length
# = n() -- return the number of occurences

# group_by = identifies unique elements in vector, creates value 'bucket' 
# similar to filtering by val, and then combining them into similar groups

dist <- plants %>%
  group_by(Sepal.Length) %>%
  summarize(total=n())

summary <- plants %>%
  group_by(Species) %>%
  summarize(total=n())

# named vectors

mydata <- c(1 : 10)

named_vec <- c(a = 1, b = 2, c = 3)
vecc <- c(named_vec, mydata)

letter <- c(letters[1 : 10])

named_vec['a']
# just grabbing values
a <- unname(named_vec[c('a', 'b')])

# names where values are greater than 2
b <- names(named_vec[ named_vec > 2 ])

vec1 <- c(2, 4, 6, 8)

vec2 <- c(9, 7, 4, 2)

# elements of vec1 that are also in vec2

diffd <- vec1 %in% vec2
sum(diffd)

# elements of vec1 not in vec2
# aka setdiff
! vec1 %in% vec2

# find index where vec1 is in vec2

a <- which(vec1 %in% vec2)

my_vec <- vec1[a]



col_a <- c(1 : 10)
col_b <- letters[1 : 10]
df <- data.frame(col_a, col_b, stringsAsFactors = FALSE)

# elements of col b where colA = 4
# aka inrersect

df2 <- which(df$col_a == 4)
col_b[df2]
matches <- vec1[ which(vec1 %in% vec2)]
df$col_b[df$col_a[matches]]






