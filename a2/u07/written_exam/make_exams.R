# for(jjj in 1:50){
#     rmarkdown::render(input = "u07_WE.Rmd",
#                       output_file = paste0("practice/ieodr_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                   showsol = F,
#                                                                                                   titex = "Practice"))
#     rmarkdown::render(input = "u07_WE.Rmd",
#                       output_file = paste0("practice/ieodr_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                       showsol = T,
#                                                                                                       titex = "Solution"))
# }

for(jjj in 100:150){
    rmarkdown::render(input = "u07_WE.Rmd",
                      output_file = paste0("real/ieodr_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                  showsol = F,
                                                                                                  titex = "EXAM"))
    rmarkdown::render(input = "u07_WE.Rmd",
                      output_file = paste0("real/ieodr_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                      showsol = T,
                                                                                                      titex = "Solution"))
}

