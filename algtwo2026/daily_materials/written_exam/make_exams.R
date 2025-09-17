# for(jjj in 1:50){
#     rmarkdown::render(input = "WE_reflections.Rmd",
#                       output_file = paste0("prac/we01_reflections_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     useseed = T,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "WE_reflections.Rmd",
#                       output_file = paste0("prac/we01_reflections_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     useseed = T,
#                                     titex = "Solution"))
# }

for(jjj in 600:630){
    rmarkdown::render(input = "WE_reflections_pnts.Rmd",
                      output_file = paste0("exams/we01_reflections_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    useseed = T,
                                    titex = "EXAM"))
    rmarkdown::render(input = "WE_reflections_pnts.Rmd",
                      output_file = paste0("exams/we01_reflections_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    useseed = T,
                                    titex = "Solution"))
}

