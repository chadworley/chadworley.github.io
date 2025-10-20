for(jjj in 101:120){
    rmarkdown::render(input = "t1021.Rmd",
                      output_file = paste0("practice/t1021_v",sprintf("%03d",jjj)), 
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "Practice"))
    rmarkdown::render(input = "t1021.Rmd",
                      output_file = paste0("practice/t1021_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
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

