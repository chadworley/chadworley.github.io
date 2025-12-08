library("exams2forms")
n = 8

### Entrance ticket
pm = list("optimize_rect_fence_barn.Rmd",
          "optimize_rect_fence_barn_B.Rmd")

exams2webquiz(pm,
             n=n,
             title = "examples_1205",
             dir = ".",
             name="examples_1205")



