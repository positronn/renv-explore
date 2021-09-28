# iris.R
library(magrittr)

iris <- tibble::tibble(iris)

iris <- iris %>%
    janitor::clean_names()

iris %>%
    ggplot2::ggplot() +
    ggplot2::geom_point(ggplot2::aes(x=sepal_length, y=petal_length, color=species))
