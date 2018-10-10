library(containerit)

file.copy(from = ("./tuto.Rmd"),
  to = ("./docker/tuto.Rmd"),
  overwrite = TRUE)

dockerfile_object <- dockerfile(from = ("./tuto.Rmd"),
  silent = TRUE,
  cmd = CMD_Render("./tuto.Rmd"))

print(dockerfile_object)
write(dockerfile_object, file = "./docker/Dockerfile")


