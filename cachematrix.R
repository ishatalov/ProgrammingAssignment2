## Put comments here that give an overall description of what your
## functions do
## The purpose of two functions below is to store inversion of the matrix

## Write a short comment describing this function
## This function takes matrix as input and creates a list with special methods.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)}



## Write a short comment describing this function
## This function checks if matrix inversion is already stored and if not compute it and store

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matr <- x$get()
  m <- solve(matr)
  x$setsolve(m)
  m
}


