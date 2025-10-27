for(jjj in 1:20){
    rmarkdown::render(input = "p1027_add_mul_for_FOIL.Rmd",
                      output_file = paste0("p1027/p1027_v",sprintf("%03d",jjj)), 
                      params = list(rseed = jjj,
                                    showsol = F))
    rmarkdown::render(input = "p1027_add_mul_for_FOIL.Rmd",
                      output_file = paste0("p1027/p1027_SOL_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T))
}


# for(jjj in 601:650){
#     rmarkdown::render(input = "u2_exam.Rmd",
#                       output_file = paste0("exam/u2ma_v",sprintf("%03d",jjj)), 
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "u2_exam.Rmd",
#                       output_file = paste0("exam/u2ma_SOL_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Solution"))
# }



# for(jjj in 201:220){
#     rmarkdown::render(input = "t1021.Rmd",
#                       output_file = paste0("p1020/t1021_v",sprintf("%03d",jjj)), 
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "t1021.Rmd",
#                       output_file = paste0("p1020/t1021_SOL_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Solution"))
# }

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

