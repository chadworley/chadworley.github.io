for(jjj in 1:20){
    rmarkdown::render(input = "PCW_1014_ftr_ntrvls.Rmd",
                      output_file = paste0("out/PCW_1014_v",sprintf("%03d",jjj)), 
                      params = list(rseed = jjj,
                                    showsol = F,
                                    useseed = T))
    rmarkdown::render(input = "PCW_1014_ftr_ntrvls.Rmd",
                      output_file = paste0("out/PCW_1014_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    useseed = T))
}

# for(jjj in 100:150){
#     rmarkdown::render(input = "u07_WE.Rmd",
#                       output_file = paste0("real/ieodr_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                   showsol = F,
#                                                                                                   titex = "EXAM"))
#     rmarkdown::render(input = "u07_WE.Rmd",
#                       output_file = paste0("real/ieodr_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                       showsol = T,
#                                                                                                       titex = "Solution"))
# }

