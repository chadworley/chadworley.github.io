for(jjj in 101:140){
    rmarkdown::render(input = "poly_ops_WE.Rmd",
                      output_file = paste0("prac_01/poe_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = F,
                                                                                    titex = "EXAM"))
    rmarkdown::render(input = "poly_ops_WE.Rmd",
                      output_file = paste0("prac_01/poe_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = T,
                                                                                    titex = "SOLUTION"))
}

