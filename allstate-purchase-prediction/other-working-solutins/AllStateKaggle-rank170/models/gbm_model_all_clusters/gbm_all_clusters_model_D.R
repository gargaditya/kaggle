
print("Calcul model D...")

# Variables
y.letter <- "D"
y.variable <- "real_D"
percent.train <- .8
seed.value <- 42

start.check <- .5
end.check <- .9
step.check <- .2

csv.output.filename <- file.path("DATA","OUTPUT","result_model_gbm_all_clusters_D.csv")
RData.output.filename <- file.path("DATA","OUTPUT","first_model_gbm_all_clusters_D.RData")

# Formules
formula_1 <- formula(
  paste("I(",y.variable," == \"1\") ~ .", sep = "")
)

formula_2 <- formula(
  paste("I(",y.variable," == \"2\") ~ .", sep = "")
)

formula_3 <- formula(
  paste("I(",y.variable," == \"3\") ~ .", sep = "")
)

# fonctions
source(file.path("templates","functions.R"))
source(file.path("templates","get_data_glm_model_with_error.R"))
source(file.path("templates","test_train_skeleton_all_clusters.R"))
source(file.path("templates","gbm_skeleton_error_estimate_D.R"))
source(file.path("templates","gbm_skeleton_final_training_D.R"))

