library("exams2forms")
n = 8

### Entrance ticket
pm = list("et01_EZ_two-step_equations.Rmd",
          "et02_shift_squaring.Rmd",
          "et03_intervals_inc_dec_pos_neg_quad.Rmd",
          "et04_solve_a1_standard_eq_0.Rmd",
          "quad_formula_decimal.Rmd",
          "cannon_balloon.Rmd")

exams2webquiz(pm,
             n=n,
             title = "examples_1201",
             dir = ".",
             name="examples_1201")



