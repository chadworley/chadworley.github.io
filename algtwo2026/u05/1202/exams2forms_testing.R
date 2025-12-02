library("exams2forms")
n = 10

### Entrance ticket
pm = list(c("11_hor_squeeze.Rmd","12_hor_stretch.Rmd","13_ver_squeeze.Rmd","14_ver_stretch.Rmd"),
          c("asymp_exp.Rmd","asymp_log.Rmd","asymp_recip.Rmd"),
          "et01_id_parent_and_shift.Rmd",
          "et01_id_parent_and_shift.Rmd",
          "shift_sqrt.Rmd",
          "factor_a_prime_whole.Rmd",
          "factor_a_times_dos.Rmd",
          "factor_a_times_EZ.Rmd")

exams2webquiz(pm,
             n=n,
             title = "examples_1202",
             dir = ".",
             name="examples_1202")



