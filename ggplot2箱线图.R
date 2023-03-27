# ggplot2箱线图

rm(list = ls())

library(ggplot2)
library(tidyverse)

data(msleep)
view(msleep)

ggplot(msleep, aes(x = vore, y = awake)) + 
  geom_boxplot(color = 1, fill = 5)

msleep %>% ggplot(aes(x = vore, y = awake)) + # 管道符 crtl + shift + m
  geom_boxplot() + 
  coord_flip() # 坐标系旋转
