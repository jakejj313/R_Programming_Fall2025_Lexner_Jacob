https://rprogramminglis4370jacoblexner.blogspot.com/2025/09/assignment-5-matrix-algebra-in-r.html

> A <- matrix(1:100,  nrow = 10)
> B <- matrix(1:1000, nrow = 10)
> dim(A)
[1] 10 10
> dim(B)
[1]  10 100
> invA <- solve(A)
#invA errors out due to being singular.
detA <- det(A)
detA
0
> nvB <- tryCatch(solve(B), error = function(e) e)
#Errors out for being 10X100 not a square                  
> detB <- tryCatch(det(B),   error = function(e) e)
#Errors out for x not being a square
