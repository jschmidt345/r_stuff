# continuous data
temp <- sample(26 : 42, 6, replace=FALSE)


# discrete data
# counted but not measured
countries <- c('USA', 'UK', 'Senegal', 'Brazil', 'Kuwait')


year <- polity$year
demo_score <-polity$democ

#missing data -- NA
a = is.na(demo_score)

length(polity$democ)




democ0 <- polity[polity$democ == 0, ]


#apply family 






a <- sapply(polity, function(x){is.numeric(x)})
numeric_col <- names( a[a])