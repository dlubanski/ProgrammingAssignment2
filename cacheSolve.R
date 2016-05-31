cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if (!is.null(m)) {
                message("Returning cached data.")
                return(m)		
        }
        inv <- x$getm()
        m <- solve(inv,...)
        x$setinv(m)
        m
}
