load("data/polity_data.rda")

# identify which years turkey had a democ of 8

turk2 <- polity[polity$country == 'Turkey', ]

# step1 reduce data set, aka filter by only turkey

a <- which(turk2$democ == 8)
year <- turk2$year[a]

year_test <- c(1960, 1965, 2002)

sum(year_test %in% year)
which(year_test %in% year)

save(turk2, file="output/turkey_data.rda")
