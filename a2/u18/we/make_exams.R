for(jjj in 1:10){
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("examples/s18we_examp_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "Example"))
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("examples/s18we_examp_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
}

for(jjj in 100:150){
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("practice/s18we_prac_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "Practice"))
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("practice/s18we_prac_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
}

for(jjj in 200:299){
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("real/s18we_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                  showsol = F,
                                                                                                  titex = "QUIZ"))
    rmarkdown::render(input = "exp_log_we.Rmd",
                      output_file = paste0("real/s18we_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                      showsol = T,
                                                                                                      titex = "SLTN"))
}

