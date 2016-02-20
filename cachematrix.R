## Put comments here that give an overall description of what your
## functions do

## This function takes in a matrix. It also uses inner methods to set and get the inverse matrix. By default the inverse matrix is null. 

makeCacheMatrix <- function(x = matrix()()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



##The function tests to see if the input's inverse already exists. If it does not then it calculates it, sets it and returns the inverse.

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInverse(m)
        m
}
