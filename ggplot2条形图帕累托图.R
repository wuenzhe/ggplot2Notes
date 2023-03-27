# ggplot2条形图

rm(list = ls())

library(ggplot2)
library(tidyverse)

data(msleep)

msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(vore)) + 
  geom_bar(fill = "6E5157") + 
  # coord_flip() + 
  theme_grey() + 
  labs(x = "Who eats waht", y = "Freq", 
       title = "Number of observations per order")

msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(fct_infreq(vore))) + 
  geom_bar(fill = "6E5157") + 
  coord_flip() + 
  theme_grey() + 
  labs(x = "Who eats waht", y = "Freq", 
       title = "Number of observations per order")
