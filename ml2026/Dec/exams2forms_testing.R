library("exams2forms")
n = 8

### Entrance ticket
pm = list("math_facts.Rmd",
          "math_facts_negs.Rmd",
          "EZ_two-step_equations.Rmd",
          "combine_like_terms.Rmd",
          "foil_get_a.Rmd",
          "foil_get_b.Rmd",
          "foil_get_c.Rmd",
          "factor_quadratic.Rmd",
          "factor_by_grouping.Rmd")

exams2webquiz(pm,
             n=n,
             title = "examples_1203",
             dir = ".",
             name="examples_1203")





