## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The makeCacheMatrix function generates a list of four functions
## that makes possible to cache the result of solve function of a matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve ## just change the name of the function
  getsolve <- function() m                ## to be different from the example given
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## cacheSolve uses the m environmental variable to avoid
## repetition in solve execution
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve() 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
}

