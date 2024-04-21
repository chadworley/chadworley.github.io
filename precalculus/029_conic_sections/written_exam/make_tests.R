dr = "we_029_141-180"
dir.create(dr, showWarnings=FALSE)
for(i in 141:180){
  myseed = i #round(rsunif(1,1111,9999))
  set.seed(myseed)
  rmarkdown::render('029_written_exam.Rmd',
                    output_file = paste0(dr,"/029_WE_",sprintf("%04d",myseed),'.pdf'),
                    params = list(num = myseed,
                                  mytitle = "PC 029 Written Exam",
                                  showsol = "False"))
}

dr = "we_029_141-180_sol"
dir.create(dr, showWarnings=FALSE)
for(i in 141:180){
  myseed = i
  set.seed(myseed)
  rmarkdown::render('029_written_exam.Rmd',
                    output_file = paste0(dr,"/029_WE_",sprintf("%04d",myseed),'_sol.pdf'),
                    params = list(num = myseed,
                                  mytitle = "PC 029 Written Exam",
                                  showsol = "True"))
}


