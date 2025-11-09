https://rprogramminglis4370jacoblexner.blogspot.com/2025/11/assignment-11-debugging-and-defensive.html 

#Corrected Code
library(funModeling)

corrected_tukey <- function(x) {
     outliers <- array(TRUE, dim = dim(x))
     for (j in seq_len(ncol(x))) {
         outliers[, j] <- outliers[, j] & tukey_outlier(x[, j])
     }
     outlier.vec <- logical(nrow(x))
     for (i in seq_len(nrow(x))) {
         outlier.vec[i] <- all(outliers[i, ])
   }
    outlier.vec 
}

set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)

corrected_tukey(test_mat)
