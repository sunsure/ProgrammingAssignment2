## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## To create a matrix object that can cache its inverse

makeCacheMatrix <- function(m= matrix()) {

        ## Initialize tha inverse property
        i <- NULL
        
        ## Method to set the matrix
        set <- function(matrix) {
                m <<- matrix
                i <<- NULL
                
        }
        
        ## Method to get the matrix
        get <- function() {
                ## Return the matrix
                m
        }
        
        ## Method to set the inverse of the matrix
        setInverse <- function(inverse) {
                i <<- inverse
        }
        
        ## Method to get the inverse of the matrix
        getInverse <- function() {
                ## Return the inverse property
                i 
        }
        
        ## Return a list of methods
        list(set = set, get = get, setInverse = setInverse , getInverse = getInverse)
 
}


## Write a short comment describing this function
## Compute the inverse of the matrix returned by "makeCacheMatrix" 
## above. If the inverse has already been calculated and the matrix
## has not been chaned, then the "cachesolve" should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse
        
        ## Just return the inverse if it is already set
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ## Get the matrix from our object
        data <- x$get()
        
        ## Calculate the inverse using matrix multiplication
        m <- solve(data) %*% data
        
        ## Set the inverse to the object
        x$setInverse(m)
        
        ## Return the matrix
        m
        
}
