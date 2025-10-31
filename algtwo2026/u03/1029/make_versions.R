# for(jjj in 1:20){
#     rmarkdown::render(input = "p1029a_box_method.Rmd",
#                       output_file = paste0("p1029a/p1029a_v",sprintf("%03d",jjj)), 
#                       params = list(rseed = jjj,
#                                     showsol = F))
#     rmarkdown::render(input = "p1029a_box_method.Rmd",
#                       output_file = paste0("p1029a/p1029a_SOL_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T))
# }

# for(jjj in 1:20){
#     rmarkdown::render(input = "p1029b_FOIL_method.Rmd",
#                       output_file = paste0("p1029b/p1029b_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = F))
#     rmarkdown::render(input = "p1029b_FOIL_method.Rmd",
#                       output_file = paste0("p1029b/p1029b_SOL_v",sprintf("%03d",jjj)),
#                       params = list(rseed = jjj,
#                                     showsol = T))
# }
