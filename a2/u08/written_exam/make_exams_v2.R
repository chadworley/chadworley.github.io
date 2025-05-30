# for(jjj in 51:100){
#     rmarkdown::render(input = "u08_WE_v2.Rmd",
#                       output_file = paste0("prac_B/u08we_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "u08_WE_v2.Rmd",
#                       output_file = paste0("prac_B/u08we_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Solution"))
# }

for(jjj in 150:180){
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

