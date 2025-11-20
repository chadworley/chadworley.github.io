library("exams2forms")
n = 3

### Entrance ticket
pm = list("simplify_radical.Rmd",
          "solve_sqr_x_eq_E.Rmd",
          "complete_the_square_H.Rmd",
          "CTS_get_vertex_B.Rmd")

exams2webquiz(pm,
             n=n,
             title = "at1121self_practice",
             outdir="outforms",
             name="at1121self_practice")



