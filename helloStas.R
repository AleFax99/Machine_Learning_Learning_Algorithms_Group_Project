print("Hello i am stas")
library(tidymodels)
library(dplyr)

load("offers_censored.RData")

# Checking the proportions of Enrolled vs. not enrolled: Should be done on the 
# training set only!!
  # Do we need to downsample?

offers %>%
  group_by(Status) %>%
  summarize(prop = n() / nrow(offers))

