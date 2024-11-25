# for(jjj in 1:50){
#     rmarkdown::render(input = "u08_WE_v2.Rmd",
#                       output_file = paste0("practice_v2/u08we_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "u08_WE_v2.Rmd",
#                       output_file = paste0("practice_v2/u08we_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Solution"))
# }

for(jjj in 100:150){
    rmarkdown::render(input = "u08_WE_v2.Rmd",
                      output_file = paste0("real/u08_WE_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "EXAM"))
    rmarkdown::render(input = "u08_WE_v2.Rmd",
                      output_file = paste0("real/u08_WE_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
}

