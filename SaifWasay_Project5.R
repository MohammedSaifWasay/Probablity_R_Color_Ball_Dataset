#Mohammed Saif Wasay, NUID:002815958, 11th February 2024, ALY6000 Introduction to Analytics

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #clears packages
options(scipen = 100) # disables scientific notation for entire R session

#Loading Libraries
library(pacman)
p_load(tidyverse)
library(dplyr)
p_load(ggthemes)

ball <- read.csv("data/ball-dataset.csv")
ball
#Problem 2
freq_color <- ball %>% group_by(color) %>% summarise(counts = n())
freq_color

#Problem 3
freq_label <- ball %>% group_by(label) %>% summarise(counts = n())
freq_label

#Problem 4
custom_colors <- c("blue", "green", "red", "yellow")
color_bar <- ggplot(freq_color, aes(x = color, y = counts)) + 
  geom_bar(stat = "identity", fill = custom_colors) +
  labs(title = "Color Counts of Balls", x = "color", y = "Count") +
  theme_tufte()
color_bar

#Problem 5
label_bar <- ggplot(ball, aes(x = label, fill = label)) + 
  geom_bar() +
  labs(title = "Label Counts of Balls", x = "Label", y = "Count") +
  theme_tufte()
label_bar

#Problem 6
prob6_result <- sum(ball$color == "green")/nrow(ball)
prob6_result

#Problem 7
prob7_result <- sum((ball$color == "blue") | (ball$color == "red"))/nrow(ball) 
prob7_result

#Problem 8
prob8_result <- sum((ball$label == "A") | (ball$label == "C"))/nrow(ball) 
prob8_result

#Problem 9
prob9_result <- sum((ball$color == "yellow") & (ball$label == "D"))/nrow(ball)
prob9_result

#Problem 10
prob10_result <- sum((ball$color == "yellow") | (ball$label == "D"))/nrow(ball)
prob10_result

#Problem 11
prob11_result <- sum((ball$color == "blue")/nrow(ball)) * sum((ball$color == "red")/(nrow(ball) - 1))
prob11_result

#Problem 12
n <- nrow(ball)
green_balls <- sum(ball$color == "green")
prob12_result <-  prod((green_balls:(green_balls - 3))) /(n * (n-1) * (n-2) * (n-3))
prob12_result

#Problem 13
prob13_result <- (sum(ball$color == "red") * sum(ball$label == "B"))/(n * (n-1)) 

#Problem 14
my_factorial <- function(r) {
  if (r == 0) {
    return(1)
  } else if (r < 0) {
    return(-1)
  } else {
    output <- 1  # Initialize the output variable to 1
    for (i in 1:r) {
      output <- i * output
    }
    return(output)
  }
}

#Problem 15
outcomes <- c("H", "T")
coin_outcomes <- expand.grid(
  first = outcomes,
  second = outcomes,
  third = outcomes,
  fourth = outcomes
)
coin_outcomes

#Problem 16
prob_head <- 0.6
prob_tail <- 0.4
coin_outcomes$coin_outcomes <- apply(coin_outcomes, 1, function(row) {
  prod(ifelse(row == "H", prob_head, prob_tail))
})
coin_outcomes

#Problem 17
outcome_probabilities <- numeric(0)
for(k in 0:4) {
  probability <- choose(4, k) * (prob_head^k) * (prob_tail^(4 - k))
  outcome_probabilities <- c(outcome_probabilities, probability)
}
num_heads_prob <- data.frame(Heads = 0:4, Probability = outcome_probabilities)
num_heads_prob

#Problem 18
prob18_result <- choose(4, 3) * (prob_head^3) * (prob_tail^(4 - 3))
prob18_result

#Problem 19
prob_2_heads <- choose(4, 2) * (prob_head^2) * (prob_tail^(4 - 2))
prob_4_heads <- choose(4, 4) * (prob_head^4) * (prob_tail^(4 - 4))
prob19_result <- prob_2_heads + prob_4_heads
prob19_result

#Problem 20
prob20_result <- 1 - prob_4_heads
prob20_result

#Problem 21
outcomes_bar <- ggplot(num_heads_prob, aes(x = Heads, y = Probability)) + 
  geom_bar(stat = "identity", fill = "cyan") +
  labs(title = "Probability Distribution of Heads for 4 flips", x = "Number of Heads", y = "Probability") +
  theme_tufte()
outcomes_bar

#Problem 22
home_win <- 0.75
away_win <- 0.50

prob22_result <- home_win^5 * away_win^5
prob22_result

#Problem 23
prob23_result <- 1 - ((1 - home_win)^5 * (1 - away_win)^5)
prob23_result

#Problem 24
prob24_result <- choose(5,3) * choose(5,2)
prob24_result

p_load(testthat)
test_file("project5_tests.R")
