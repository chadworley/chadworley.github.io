for(jjj in 1:20){
    rmarkdown::render(input = "p1028a_box_method_2digit.Rmd",
                      output_file = paste0("p1028a/p1028a_v",sprintf("%03d",jjj)), 
                      params = list(rseed = jjj,
                                    showsol = F))
    rmarkdown::render(input = "p1028a_box_method_2digit.Rmd",
                      output_file = paste0("p1028a/p1028a_SOL_v",sprintf("%03d",jjj)),
                      params = list(rseed = jjj,
                                    showsol = T))
}

# for(jjj in 1:20){
#     rmarkdown::render(input = "p1028b_combine_like_terms.Rmd",
#                       output_file = paste0("p1028b/p1028b_v",sprintf("%03d",jjj)), 
#                       params = list(rseed = jjj,
#                                     showsol = F))
#     rmarkdown::render(input = "p1028b_combine_like_terms.Rmd",
#                       output_file = paste0("p1028b/p1028b_SOL_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T))
# }
