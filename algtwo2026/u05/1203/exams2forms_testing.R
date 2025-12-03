library("exams2forms")
n = 8

### Entrance ticket
pm = list("ET_quad_formula_decimal.Rmd",
          "01_solve_rect_quadratic.Rmd",
          "02_quad_formula_roots.Rmd",
          "03_quad_AOS_from_roots.Rmd",
          "04_quad_AOS_from_roots_B.Rmd",
          "05_quad_w_from_roots.Rmd",
          "06_quad_h_from_standard_B.Rmd",
          "07_quad_w_from_standard.Rmd")

exams2webquiz(pm,
             n=n,
             title = "examples_1203",
             dir = ".",
             name="examples_1203")



