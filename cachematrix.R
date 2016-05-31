## Functions retrieve and set matrix and inverse, then returns previously assigned inverse or
## computes inverse and returns.

## 1st function creates matrix, retrieves matrix, sets matrix inverse and retrieves inverse.

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

## 2nd function computes inverse of 1st function's output if Inverse is not cached.

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
