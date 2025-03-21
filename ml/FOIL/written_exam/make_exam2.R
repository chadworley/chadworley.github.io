for(jjj in 0:20){
    rmarkdown::render(input = "FOIL_A_ne_1.Rmd",
                      output_file = paste0("we2_prac/FOIL_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "practice"))
    rmarkdown::render(input = "FOIL_A_ne_1.Rmd",
                      output_file = paste0("we2_prac/FOIL_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "solution"))
}

for(jjj in 100:130){
    rmarkdown::render(input = "FOIL_A_ne_1.Rmd",
                      output_file = paste0("we2_quiz/FOIL_quiz_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = F,
                                    titex = "QUIZ"))
    rmarkdown::render(input = "FOIL_A_ne_1.Rmd",
                      output_file = paste0("we2_quiz/FOIL_quiz_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T,
                                    titex = "SLTN"))
}
