for(jjj in 1:20){
    rmarkdown::render(input = "arith_we.Rmd",
                      output_file = paste0("practice/arith_prac_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "Practice"))
    rmarkdown::render(input = "arith_we.Rmd",
                      output_file = paste0("practice/arith_prac_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
}

for(jjj in 100:130){
    rmarkdown::render(input = "arith_we.Rmd",
                      output_file = paste0("real/arith_quiz_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                  showsol = F,
                                                                                                  titex = "QUIZ"))
    rmarkdown::render(input = "arith_we.Rmd",
                      output_file = paste0("real/arith_quiz_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                      showsol = T,
                                                                                                      titex = "SLTN"))
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