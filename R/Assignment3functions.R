#Radv2
#function 1
points_and_line_graph <- function(x, y, title, x_label, y_label){
  plot(x, y,
       type = "p",
       col = "orangered3",
       cex = 1.5,
       pch = 20,
       main = title,
       xlab = x_label,
       ylab = y_label)

  model <- lm(y ~ x)
  abline(model, col = "slategray1", lwd = 2.5)
}

#function 2
simulate <- function(runs, single_run_function, input_value){
  results <- numeric(runs)
  for(i in 1:runs){
    results[i] <- single_run_function(input_value)
  }
  results
}
