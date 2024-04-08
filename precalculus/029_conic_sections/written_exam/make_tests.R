dr = "out_practice_sol"
#set.seed(112)
dir.create(dr, showWarnings=FALSE)
for(i in 1:30){
  myseed = i #round(rsunif(1,1111,9999))
  set.seed(myseed)
  rmarkdown::render('029_written_exam.Rmd', 
                    output_file = paste0(dr,"/029_WE_pracSol_",sprintf("%04d",myseed),'.pdf'),
                    params = list(num = myseed,
                                  mytitle = "PC 029 Practice Exam",
                                  showsol = "True"))
}

# 
# dir.create("out_prac", showWarnings=FALSE)
# for(i in 1:10){
#   myseed = i
#   set.seed(myseed)
#   rmarkdown::render('026_written_exam.Rmd',
#                     output_file = paste0("out_prac/026_WE",myseed,'.pdf'),
#                     params = list(num = myseed,
#                                   mytitle = "PC 026 NO-CALC Practice"))
# }


