set.seed(245)

for(i in 1:30){
  myseed = round(runif(1,1111,9999))
  set.seed(myseed)
  rmarkdown::render('024_written_exam.Rmd', output_file = paste0("output/024_WE",myseed,'.pdf'),params = list(num = myseed))
  set.seed(myseed)
  rmarkdown::render('024_written_exam_sol.Rmd', output_file = paste0("output/024_WE",myseed,'_sol.pdf'),params = list(num = myseed))
}

