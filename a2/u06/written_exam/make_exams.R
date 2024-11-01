for(jjj in 600:700){
    rmarkdown::render(input = "poly_facts_WE.Rmd",
                      output_file = paste0("reals/poe_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = F,
                                                                                    titex = "EXAM"))
    rmarkdown::render(input = "poly_facts_WE.Rmd",
                      output_file = paste0("reals/poe_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = T,
                                                                                    titex = "solution"))
}

