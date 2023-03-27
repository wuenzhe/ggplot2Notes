# ggplot2语法结构

rm(list = ls())

library(ggplot2)
library(tidyverse)

data(mpg)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, col = drv)) + 
  geom_point() + 
  geom_smooth(method = "lm") +
  facet_wrap(~drv) + 
  theme_gray()

ggplot(mpg, aes(hwy, col = drv)) + 
  geom_boxplot() + 
  facet_wrap(~drv) +
  coord_flip()

ggplot(mpg, aes(hwy, drv,col = drv)) + 
  geom_boxplot()
