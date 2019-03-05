## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
