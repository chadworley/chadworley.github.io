library("exams")
n = 30
outdir = "outcanvas"

### Entrance ticket
# pm = list("math_facts.Rmd",
#           "math_facts.Rmd",
#           "math_facts.Rmd",
#           "math_facts_negs.Rmd",
#           "math_facts_negs.Rmd",
#           "EZ_two-step_equations.Rmd",
#           "EZ_two-step_equations.Rmd")
# 
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(3,length(pm)),
#              maxattempts = 8,
#              name="et_1203",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))

# # Classwork 1
# pm = list("combine_like_terms.Rmd",
#           "foil_get_a.Rmd",
#           "foil_get_b.Rmd",
#           "foil_get_c.Rmd",
#           "factor_quadratic.Rmd",
#           "factor_quadratic.Rmd",
#           "factor_by_grouping.Rmd",
#           "factor_by_grouping.Rmd"
#           )
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=rep(4,length(pm)),
#              maxattempts = 8,
#              name="review_1203",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


# # # Classwork 2
pm = list("simp_frac.Rmd",
          "simp_frac.Rmd",
          "simp_frac.Rmd",
          "simp_frac.Rmd",
          "simp_frac.Rmd")
exams2canvas(pm,
             n=n,
             dir=outdir,
             points=c(2),
             maxattempts = 8,
             name="simp_fracs_1203",
             template = "canvas_qti12.xml",
             cloze = list(enumerate = FALSE))


# pm = list("vertex_form_animation.Rmd")
# exams2canvas(pm,
#              n=n,
#              dir=outdir,
#              points=c(2),
#              maxattempts = 8,
#              name="at1124canvas_C_vrtx_form_anim",
#              template = "canvas_qti12.xml",
#              cloze = list(enumerate = FALSE))


