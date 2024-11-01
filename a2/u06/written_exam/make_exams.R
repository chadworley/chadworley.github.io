for(jjj in 1:50){
    rmarkdown::render(input = "poly_facts_WE.Rmd",
                      output_file = paste0("practice/poe_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = F,
                                                                                    titex = "practice"))
    rmarkdown::render(input = "poly_facts_WE.Rmd",
                      output_file = paste0("practice/poe_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = T,
                                                                                    titex = "solution"))
}

