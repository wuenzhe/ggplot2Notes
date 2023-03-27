# ggplot2散点图

rm(list = ls())

library(ggplot2)
library(tidyverse)

data(msleep)

msleep %>% 
  drop_na(vore) %>% 
  ggplot(aes(sleep_total, bodywt, col=vore)) + 
  geom_point(size = 3, alpha = 0.5) + 
  geom_line()

msleep %>% 
  drop_na(vore) %>%
  ggplot(aes(brainwt, bodywt)) + 
  geom_point(size = 3, alpha = 0.5) + 
  geom_smooth(method = lm, se = F) + 
  facet_wrap(~vore) + 
  labs(title = "brain weitht & body weight")

msleep %>% 
  filter(bodywt < 2) %>% 
  ggplot(aes(brainwt, bodywt)) + 
  geom_point(aes(color = sleep_total, size = awake)) + 
  geom_smooth() + 
  labs(title = "brain weitht & body weight", x = "body weight", y = "brain weight")
