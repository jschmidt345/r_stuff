# Final Project
# Using linear regression to predict future gdp growth
# indepent variables : private investment, trade balance, consumption, govt spending


library('dplyr')
library('ggplot2')

### loading in data, all log scale except gdp ###
df_gdp <- c(read.csv('GDPC1 (1).csv'))
df_consump <- read.csv('consumption_log.csv')
df_govt <- read.csv('govt_spen_ln.csv')
df_invest <- read.csv('investment_log.csv')
df_cons_conf <- read.csv('UMCSENT_log.csv')
df <- data.frame(df_gdp, df_consump, df_govt, df_invest, df_cons_conf)

# visualizing data before analysis

### distributions of each variable ###
gdp_hist <- qplot(df$GDPC1, geom='histogram')
consump_hist <- qplot(df$PCE, geom='histogram')
invest_hist <- qplot(df$GPDIC1, geom='histogram')
confidence_hist <- qplot(df$UMCSENT, geom='histogram')
govt_hist <- qplot(df$W068RCQ027SBEA, geom='histogram')


### summary stats of each df ###
mean_std_max_min_conf <- c(mean(df$UMCSENT), sd(df$UMCSENT), max(df$UMCSENT), min(df$UMCSENT))
mean_std_max_min_consumption <- c(mean(df$PCE), sd(df$PCE), max(df$PCE), min(df$PCE))
mean_std_max_min_gdp <- c(mean(df$GDPC1), sd(df$GDPC1), max(df$GDPC1), min(df$GDPC1))
mean_std_max_govt <-  c(mean(df$W068RCQ027SBEA), sd(df$W068RCQ027SBEA), max(df$W068RCQ027SBEA), min(df$W068RCQ027SBEA))
mean_std_max_inv <-  c(mean(df$GPDIC1), sd(df$GPDIC1), max(df$GPDIC1), min(df$GPDIC1))


### correlation for dependendent var(gdp) by independent vars(consumption, consumer confidence, invesment, govt spending) ###
corr_cons_conf_gdp <- cor(x=df$UMCSENT, df$GDPC1)
corr_cons_gdp <- cor(df$PCE, df$GDPC1)
corr_inv_gdp <- cor(df$GPDIC1, df$GDPC1)
corr_govt_gdp <- cor(df$W068RCQ027SBEA, df$GDPC1)

### scatterplots for relationship visualization ###
sentiment_gdp <- df %>%
  ggplot(aes(x = df$UMCSENT, y = df$GDPC1)) +
  geom_point(colour = "red")

consumption_gdp <- df %>%
  ggplot(aes(x = df$PCE, y = df$GDPC1)) +
  geom_point(colour = "red")

govt_spen_gdp <- df %>%
  ggplot(aes(x = df$W068RCQ027SBEA, y = df$GDPC1)) +
  geom_point(colour = "red")

inv_gdp <- df %>%
  ggplot(aes(x = df$GPDIC1, y = df$GDPC1)) +
  geom_point(colour = "red")

# *** from scatter plot, consumer sentiment is clearly not linear, even after natural log ***
# *** must exclude from ols ***

fitted_sentiment <- sentiment_gdp +
  geom_smooth(method = "lm", fill = NA)

### creating models ###

# simple model pce

simple_equation_pce <- GDPC1 ~ PCE
simple_model_pce <- lm(simple_equation_pce, data=df)
pce_summary <- summary(simple_model_pce)

fitted_consumption <- ggplot(data = df, aes(x = PCE, y = GDPC1)) +
  geom_point() +
  stat_smooth(method = "lm", col = "green") +
  theme(panel.background = element_rect(fill = "white"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("Linear Model Fitted to Data")



# simple model govt spending
simple_equation_govt <- GDPC1 ~ W068RCQ027SBEA
simple_model_govt <- lm(simple_equation_govt, data=df)
govt_summary <- summary(simple_model_govt)

fitted_govt_spen <- ggplot(data = df, aes(x = W068RCQ027SBEA, y = GDPC1)) +
  geom_point() +
  stat_smooth(method = "lm", col = "green") +
  theme(panel.background = element_rect(fill = "white"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("Linear Model Fitted to Data")




# simple model private investment
simple_equation_investment <- GDPC1 ~ GPDIC1
simple_model_inv <- lm(simple_equation_investment, data=df)
investment_summary <- summary(simple_model_inv)

fitted_govt_spen <- ggplot(data = df, aes(x = GPDIC1, y = GDPC1)) +
  geom_point() +
  stat_smooth(method = "lm", col = "green") +
  theme(panel.background = element_rect(fill = "white"),
        axis.line.x=element_line(),
        axis.line.y=element_line()) +
  ggtitle("Linear Model Fitted to Data")


# multiple regression model

equation_multiple <- GDPC1 ~ PCE + GPDIC1 + W068RCQ027SBEA
fitted_multiple_model <- lm(equation_multiple, data=df)



test_val <- c(runif(3, min=0, max=100))
predict(fitted_multiple_model, data.frame(GPDIC1=test_val[1], PCE=test_val[2], W068RCQ027SBEA=test_val[3]))


#simple_model <- function(dependent_var, independent_var, input_data){
#  simple_equation <- dependent_var ~ independent_var
#  simple_model < lm(simple_equation, data=input_data)
#  return(simple_model)
#}
