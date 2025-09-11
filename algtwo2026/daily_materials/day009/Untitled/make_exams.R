for(jjj in 1:50){
    rmarkdown::render(input = "PCW_draw_even_or_odd.Rmd",
                      output_file = paste0("PCW/PCW_draw_even_or_odd_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    useseed = T,
                                    showsol = F))
    rmarkdown::render(input = "PCW_draw_even_or_odd.Rmd",
                      output_file = paste0("PCW/PCW_draw_even_or_odd_sol_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    useseed = T,
                                    showsol = T))
}

# 
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

