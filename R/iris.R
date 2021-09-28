# iris.R
library(magrittr)
library(tibble)
library(janitor)
library(ggplot2)
library(readr)

# load iris dataset as tibble
iris <- tibble(iris)

# clean column names
iris <- iris %>%
    clean_names()

# plot a scatterplot
p <- iris %>%
    ggplot() +
    geom_point(aes(x=sepal_length, y=petal_length, color=species))

ggsave('output/plot/iris-scatterplot-pl-vs-sl.pdf')

iris %>%
    write_csv('output/report/iris_dataset.csv')