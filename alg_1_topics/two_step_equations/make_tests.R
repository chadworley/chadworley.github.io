low = 1
high = 50

dr = paste0("twostep_",low,"-",high,collapse="")
dir.create(dr, showWarnings=FALSE)
for(i in low:high){
  myseed = i
  set.seed(myseed)
  rmarkdown::render('two-step_eqs.Rmd',
                    output_file = paste0(dr,"/twostep_",sprintf("%04d",myseed),'.pdf'),
                    params = list(num = myseed,
                                  mytitle = "Two-step Equations",
                                  showsol = "False"))
}

# dr = paste0("we_029_",low,"-",high,"sol",collapse="")
# dir.create(dr, showWarnings=FALSE)
# for(i in low:high){
#   myseed = i
#   set.seed(myseed)
#   rmarkdown::render('029_written_exam.Rmd',
#                     output_file = paste0(dr,"/029_WE_",sprintf("%04d",myseed),'_sol.pdf'),
#                     params = list(num = myseed,
#                                   mytitle = "PC 029 Written Exam",
#                                   showsol = "True"))
# }


