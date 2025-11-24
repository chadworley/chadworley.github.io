library("exams2forms")
n = 8

### Entrance ticket
pm = list("complete_the_square_F.Rmd",
          "flip_parabola.Rmd",
          "vertex_form_animation.Rmd")

exams2webquiz(pm,
             n=n,
             title = "at1124canvas_practice",
             dir = ".",
             name="at1124canvas_practice")



