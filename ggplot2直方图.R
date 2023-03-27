# ggplot2直方图

rm(list = ls())

library(ggplot2)
library(tidyverse)

data(mpg)

mpg %>% 
  ggplot(aes(hwy, fill = class, color = 5)) + 
  # geom_histogram(binwidth = 5) + 
  # geom_histogram(bins = 10) + 
  geom_histogram(breaks = seq(10, 45, 3), col = 1) + 
  facet_wrap(~class, ncol = 3) + 
  lims(x = c(5, 50), y = c(0, 60)) + 
  labs(title = "Histogram of hwy", x = "Highway miles pergallon") +
  scale_x_continuous(breaks = seq(10, 50, 10)) + 
  scale_y_continuous(breaks = seq(0, 60, 10))
  