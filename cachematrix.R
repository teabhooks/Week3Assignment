## Put comments here that give an overall description of what your
## functions do

## This function will make a matrix 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  #setting the inverse to null
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  getinv <- function() inv
  setinv <- function(inverse) inv <<- inverse
  
  ##create a list of functions for matrix
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


##This sill return a cached inverse if it is already computed

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  #return cache matrix
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }

  data <- x$get(
  inv <- solve(data)
  x$setinv(inv)
  return(inv)
        ## Return a matrix that is the inverse of 'x'
}
