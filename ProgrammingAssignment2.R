## makeCacheMatrix <- function that creates a special "matrix" object that can cache its inverse
## cacheSolve <- function computes the inverse of the special "matrix" returned by makeCacheMatrix.
##    if the inverse has already been calculated, then cacheSolve shoud retrieve the inverse from cache

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
    setinverse <- function(inverse) inv <<- mean
    getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

cacheSolve <- function(x, ...){
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}