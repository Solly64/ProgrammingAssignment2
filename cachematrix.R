## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## The purpose of the function is to make the makeCacheMatrix assessible to make the function work in the regualar function
##and the inverse function
# Set inv <- NULL so that the function can be use later in the code as an object
The p
makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
}
   get <- function() x
    setInverse <- function(inverse) inv <<- solve(x)
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)

## The get function is impletment so that it can use with "$" symbol when using the inverse function
## The list is used to defined the characters so it can be found when using it with the matrix
## <<- solve(x) is use to put the code back to the parent environment for the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheSolve <- makeCacheMatrix()
	cacheSolve$set(matrix(1:4, 2))
	cacheSolve$get()
}
