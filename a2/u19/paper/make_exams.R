# for(jjj in 1:10){
#     rmarkdown::render(input = "s19_written_exam.Rmd",
#                       output_file = paste0("example/s19_WE_example_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     useseed = T,
#                                     showsol = F,
#                                     titex = "example"))
#     rmarkdown::render(input = "s19_written_exam.Rmd",
#                       output_file = paste0("example/s19_WE_example_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     useseed = T,
#                                     showsol = T,
#                                     titex = "solution"))
# }

for(jjj in 101:150){
    rmarkdown::render(input = "s19_written_exam.Rmd",
                      output_file = paste0("practice/s19_WE_practice_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    useseed = T,
                                    showsol = F,
                                    titex = "practice"))
    rmarkdown::render(input = "s19_written_exam.Rmd",
                      output_file = paste0("practice/s19_WE_practice_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    useseed = T,
                                    showsol = T,
                                    titex = "solution"))
}

# for(jjj in 600:699){
#     rmarkdown::render(input = "trig_final.Rmd",
#                       output_file = paste0("real/trig_final_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                    useseed = T,
#                                                                                                   showsol = F,
#                                                                                                   titex = "TEST"))
#     rmarkdown::render(input = "trig_final.Rmd",
#                       output_file = paste0("real/trig_final_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                        useseed = T,
#                                                                                                       showsol = T,
#                                                                                                       titex = "SLTN"))
# }

