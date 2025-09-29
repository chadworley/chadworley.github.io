for(jjj in 1:20){
    rmarkdown::render(input = "PCW_09_29.Rmd",
                      output_file = paste0("prac/PCW_09_29_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    useseed = T,
                                    titex = "PCW_09_29: Graph Parent Translations"))
    rmarkdown::render(input = "PCW_09_29.Rmd",
                      output_file = paste0("prac/PCW_09_29_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    useseed = T,
                                    titex = "PCW_09_29 SOLUTION: Graph Parent Translations"))
}

# 
# for(jjj in 600:630){
#     rmarkdown::render(input = "WE_reflections_pnts.Rmd",
#                       output_file = paste0("exams/we01_reflections_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     useseed = T,
#                                     titex = "EXAM"))
#     rmarkdown::render(input = "WE_reflections_pnts.Rmd",
#                       output_file = paste0("exams/we01_reflections_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     useseed = T,
#                                     titex = "Solution"))
# }

