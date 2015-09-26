## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
matrix_inverse<- NULL
    set <- function(y) {
      x <<- y
      matrix_inverse <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) matrix_inverse<<-solve
    getsolve <- function() matrix_inverse
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve  = getsolve )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        matrix_inverse <- x$getsolve()
  if(!is.null(matrix_inverse)) {
    message("getting cached data")
    return(matrix_inverse)
  }
  data <- x$get()
  matrix_inverse<- solve(data, ...)
  x$setsolve(matrix_inverse)
  matrix_inverse
  ## Return a matrix that is the inverse of 'x'
}
