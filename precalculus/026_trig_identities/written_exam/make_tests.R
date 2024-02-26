dr = "out_exams_2"
set.seed(112)
dir.create(dr, showWarnings=FALSE)
for(i in 1:50){
  myseed = round(runif(1,1111,9999))
  set.seed(myseed)
  rmarkdown::render('026_written_exam.Rmd', 
                    output_file = paste0(dr,"/026_WE",myseed,'.pdf'),
                    params = list(num = myseed,
                                  mytitle = "PC 026 NO-CALC Exam"))
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


