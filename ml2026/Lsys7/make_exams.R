for(jjj in 1:20){
    rmarkdown::render(input = "turtle_commands_pdf.Rmd",
                      output_file = paste0("et1021/et1021_v",sprintf("%03d",jjj)), 
                      params = list(rseed = jjj,
                                    showsol = F))
    rmarkdown::render(input = "turtle_commands_pdf.Rmd",
                      output_file = paste0("et1021/et1021_SOL_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T))
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

