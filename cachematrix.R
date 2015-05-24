## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ### define cache object and required function
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() s
        ## map and return adjusted matrix
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        ## return cached value
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        ## calculate value and cache it
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
