library(ggplot2)
library(plotly)


set.seed(137)

n <- 500

beta0 <- 80
beta1 <- 3.5

age <- rnorm(n, 3.5, 1.5)
height <- beta0 + beta1*age + rnorm(n, 8, 3.5)


ds <- data.frame(age, height)

ggplot(ds, aes(x = age, y = height)) +
  geom_point(colour = "purple") +
  xlab("Child Age") +
  ylab("Height (cm)") 

ggsave("age_height.png", width = 7, height = 5, units = "in")


ggplot(ds, aes(x = age, y = height)) +
  geom_point(colour = "purple") +
  xlab("Child Age") +
  ylab("Height (cm)") +
  geom_smooth(method = "lm")

ggsave("age_height_lm.png", width = 7, height = 5, units = "in")



####

set.seed(137)


beta0 <- 80
beta1 <- 3.5
beta2 <- 2.0

age <- rnorm(n, 3.5, 1.5)
weight <- rnorm(n, 16, 3)
height <- beta0 + beta1*age + beta2*weight + rnorm(n, 8, 3.5)

ds <- data.frame(age, weight, height)

plot_ly(ds, x = ~age, y = ~weight, z = ~height, marker = list(symbol = 'circle', size = 5))
