for(i in 1:15){
    rmarkdown::render(input = "long_div_paper.Rmd",
                      output_file = paste0("ld_v",sprintf("%02d",i)), params = list(rseed = i))
}