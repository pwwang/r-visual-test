library(visualTest)
library(vdiffr)
library(ggplot2)

isImageSimilar = function(img, exname, threshold = 1) {
    expect_img = file.path(getwd(), "expects", exname)
    isSimilar(img, expect_img, threshold)
}

gen_base_plot = function() {
    base::plot(1:10)
}

gen_ggplot_point = function() {
    ggplot(mtcars, aes(x = wt, y = mpg)) +
        geom_point() +
        ggtitle("ggplot point plot")
}
