makeCacheMatrix <- function(x = matrix()) {
        invm <- NULL
        setm <- function(mat) {
                x <<- mat
                invm <<- NULL
        }
        getm <- function() x
        setinv <- function(solve) invm <<- solve
        getinv <- function() invm
        list(setm = setm, getm = getm, setinv = setinv, getinv = getinv)
}