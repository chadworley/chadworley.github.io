for(i in 1:30){
    rmarkdown::render(input = "multiply_2digit.Rmd",
                      output_file = paste0("m2d_v",sprintf("%02d",i)), params = list(rseed = i))
}