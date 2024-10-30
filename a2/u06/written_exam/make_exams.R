for(jjj in 200:250){
    rmarkdown::render(input = "poly_ops_WE.Rmd",
                      output_file = paste0("reals/poe_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = F,
                                                                                    titex = "EXAM"))
    rmarkdown::render(input = "poly_ops_WE.Rmd",
                      output_file = paste0("reals/poe_sol_v",sprintf("%03d",jjj)), params = list(rseed = jjj,
                                                                                    showsol = T,
                                                                                    titex = "SOLUTION"))
}






