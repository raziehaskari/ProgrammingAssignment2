## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a special matrix object which can also calculates its inverse.
## I did the same as the example of this assignment:
##1.get the value of the matrix
##2.set the value of the matrix
##3.get the value of the Inverse
##4.set the value of the Inverse

makeCacheMatrix <- function(x = matrix()) {
        
  I <- NULL
  get <- function() x
  set <- function(y){
    x <<- y
    I <<- NULL
  }
  getInverse <- function() I
  setInverse <- function(Inverse){
    I <<- Inverse
  }
  
  list(set = set, get = get , setInverse = setInverse , getInverse = getInverse)
        
}


## Write a short comment describing this function

## Here the cacheSolve function creates the inverse of the special matrix created with makeCacheMatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getInverse()
  if (!is.null(I)){
    print("already computed")
    return(I)
  }
  data <- x$get()
  I <- solve(data)
  x$setInverse(I)
  I
}
