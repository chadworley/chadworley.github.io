
# for(jjj in 1:10){
#     rmarkdown::render(input = "s19_written_exam_bw.Rmd",
#                       output_file = paste0("example_bw/s19_WEbw_example_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     useseed = T,
#                                     showsol = F,
#                                     titex = "example"))
    # rmarkdown::render(input = "s19_written_exam_bw.Rmd",
    #                   output_file = paste0("example_bw/s19_WEbw_example_sol_v",sprintf("%03d",jjj)),
    #                   params = list(rseed = jjj,
    #                                 useseed = T,
    #                                 showsol = T,
    #                                 titex = "solution"))
# }

# for(jjj in 101:150){
#     rmarkdown::render(input = "s19_written_exam_bw.Rmd",
#                       output_file = paste0("practice_bw/s19_WEbw_practice_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     useseed = T,
#                                     showsol = F,
#                                     titex = "practice"))
#     rmarkdown::render(input = "s19_written_exam_bw.Rmd",
#                       output_file = paste0("practice_bw/s19_WEbw_practice_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     useseed = T,
#                                     showsol = T,
#                                     titex = "solution"))
# }

for(jjj in 500:599){
    rmarkdown::render(input = "s19_written_exam.Rmd",
                      output_file = paste0("mastery/s19_WE_",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                   useseed = T,
                                                                                                  showsol = F,
                                                                                                  titex = "TEST"))
    rmarkdown::render(input = "s19_written_exam.Rmd",
                      output_file = paste0("mastery/s19_WE_sol_",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                       useseed = T,
                                                                                                      showsol = T,
                                                                                                      titex = "SLTN"))
}

