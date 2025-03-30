for(jjj in 1:50){
    rmarkdown::render(input = "trig_final.Rmd",
                      output_file = paste0("practice/trig_final_prac_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "Practice"))
    rmarkdown::render(input = "trig_final.Rmd",
                      output_file = paste0("practice/trig_final_prac_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "Solution"))
}

for(jjj in 600:699){
    rmarkdown::render(input = "trig_final.Rmd",
                      output_file = paste0("real/trig_final_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                  showsol = F,
                                                                                                  titex = "TEST"))
    rmarkdown::render(input = "trig_final.Rmd",
                      output_file = paste0("real/trig_final_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                                      showsol = T,
                                                                                                      titex = "SLTN"))
}

