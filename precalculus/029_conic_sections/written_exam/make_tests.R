# dr = "out_practice_sol"
# dir.create(dr, showWarnings=FALSE)
# for(i in 1:30){
#   myseed = i #round(rsunif(1,1111,9999))
#   set.seed(myseed)
#   rmarkdown::render('029_written_exam.Rmd', 
#                     output_file = paste0(dr,"/029_WE_pracSol_",sprintf("%04d",myseed),'.pdf'),
#                     params = list(num = myseed,
#                                   mytitle = "PC 029 Practice Exam",
#                                   showsol = "True"))
# }

dr = "out_practice"
dir.create(dr, showWarnings=FALSE)
for(i in 1:30){
  myseed = i
  set.seed(myseed)
  rmarkdown::render('029_written_exam.Rmd', 
                    output_file = paste0(dr,"/029_WE_prac_",sprintf("%04d",myseed),'.pdf'),
                    params = list(num = myseed,
                                  mytitle = "PC 029 Practice Exam",
                                  showsol = "False"))
}


