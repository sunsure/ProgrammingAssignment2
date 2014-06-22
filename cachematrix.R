## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## To create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

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
        setInverse <- function() {
                i <<- inverse
        }
        
        ## Method to get the inverse of the matrix
        getInverse <- function() {
                ## Return the inverse property
                i 
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
