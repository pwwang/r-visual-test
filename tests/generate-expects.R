source(file.path(getwd(), "tests", "helper-generators.R"))

generate_expects = function(genfun, file, ...) {
    print(paste0("- Generating ", file, " ..."))
    ofile = file.path(getwd(), "tests", "expects", file)

    ext = tools::file_ext(file)

    if (ext == "rds") {
        obj = genfun()
        saveRDS(obj, ofile)
    } else if (ext == "png") {
        png(ofile, ...)
        obj = genfun()
        if (!is.null(obj)) {
            print(obj)
        }
        dev.off()
    } else {
        stop("Unknown file extension: ", ext)
    }
}

generate_expects(gen_base_plot, "base_plot.png")
generate_expects(gen_ggplot_point, "ggplot_point.png")
