# for(jjj in 1:50){
#     rmarkdown::render(input = "draw_waves.Rmd",
#                       output_file = paste0("practice/u15ws2_prac_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F,
#                                     titex = "Practice"))
#     rmarkdown::render(input = "draw_waves.Rmd",
#                       output_file = paste0("practice/u15ws2_prac_sol_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T,
#                                     titex = "Solution"))
# }

for(jjj in 900:999){
    rmarkdown::render(input = "draw_waves.Rmd",
                      output_file = paste0("real/u15ws2_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                  showsol = F,
                                                                                                  titex = "QUIZ"))
    rmarkdown::render(input = "draw_waves.Rmd",
                      output_file = paste0("real/u15ws2_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                      showsol = T,
                                                                                                      titex = "Solution"))
}

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