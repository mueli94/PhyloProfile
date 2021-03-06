context("test creating domain plot for a pair seed and ortholog proteins")

test_that("test domain plot", {
    info <- c("OG_1029", "E.intestinalis@876142@Eint_030020")
    domainDf <- PhyloProfile::parseDomainInput(
        "OG_1029","domains/OG_1029.domains","file"
    )
    expect_true(nrow(domainDf) == 8)

    labelSize <- 12
    titleSize <- 12
    p <- PhyloProfile::createArchiPlot(info, domainDf, labelSize, titleSize)
    expect_true(nrow(p$layout) == 2)
})
