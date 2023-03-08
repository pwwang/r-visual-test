# Visual tests in R

This repository contains a set of visual tests for R, using [MangoTheCat/visualTest][1] or [vdiffr][2].

```r
# Generate the expectations
source("tests/generate-expects.R")

# Run the tests
testthat::test_dir("tests/")
```

[1]: https://github.com/MangoTheCat/visualTest
[2]: https://github.com/r-lib/vdiffr
[3]: here.r-lib.org
