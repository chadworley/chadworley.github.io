library("exams")
n = 30
outdir = "outcanvas"
genname = "s19_"

# probs = c("34_spinning_pyramid.Rmd")
# 
# pnts = c(2)
# 
# # pnts = rep(6,length(probs))
# 
# 
# stems = tools::file_path_sans_ext(sub(".*/", "", probs))
# names = paste0(genname,stems)
# for(i in 1:length(probs)){
#   exams2canvas(probs[i],
#                n=n,
#                dir=outdir,
#                points=pnts[i],
#                maxattempts = 10,
#                name=names[i],
#                template = "canvas_qti12.xml",
#                cloze = list(enumerate = FALSE))
# }

##############################################################
genname = "s19_online"

pm = list(
    "02_groceries_get_total_B.Rmd",
    "07_can_mats_mult.Rmd",
    "11_mult_mats_no_dgrm.Rmd",
    c("17_rotate_2D.Rmd","18_shear_2D.Rmd","19_squeeze_2D.Rmd"),
    "20_projection_3D_to_2D.Rmd",
    "88_determinant_par.Rmd",
    "89_Cramers_rule_2x2.Rmd",
    "30_can_add_matrices.Rmd",
    c("31_add_matrices.Rmd","32_subtract_matrices.Rmd"),
    "33_ntwrk_incidence_mat.Rmd"
)

exams2canvas(pm,
             n=n,
             dir=outdir,
             points=rep(2,length(pm)),
             maxattempts = 6,
             name=paste0(genname,"_mastery"),
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))