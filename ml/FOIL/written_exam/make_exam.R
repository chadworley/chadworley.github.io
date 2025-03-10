for(jjj in 100:125){
    rmarkdown::render(input = "FOIL_factor.Rmd",
                      output_file = paste0("prac/foil_factor_pq_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "practice"))
    rmarkdown::render(input = "FOIL_factor.Rmd",
                      output_file = paste0("prac/foil_factor_pq_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "solution"))
}

# for(jjj in 100:199){
#     rmarkdown::render(input = "u12_WE.Rmd",
#                       output_file = paste0("real/u12we_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                   showsol = F,
#                                                                                                   titex = "EXAM"))
#     rmarkdown::render(input = "u12_WE.Rmd",
#                       output_file = paste0("real/u12we_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
#                                                                                                       showsol = T,
#                                                                                                       titex = "Solution"))
# }

# for(jjj in c(-2)){
#     rmarkdown::render(input = "u12_WE.Rmd",
#                       output_file = paste0("example/u12pwe_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Example"))
#     rmarkdown::render(input = "u12_WE.Rmd",
#                       output_file = paste0("example/u12pwe_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Example_Sol"))
# }