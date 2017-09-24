## Put comments here that give an overall description of what your
## functions do

## Creates an object to store a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinv <- function(solve) s <<- solve
  getinv <- function() s
  list(set=set,get=get,
       setinv=setinv,
       getinv = getinv)
}
  
  
  

##Checks to see if inverse has been cached. If it has been then returns the inverse
##otherwise calculates the inverse and outputs it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getinv()
  if(!is.null(s)) {
      message("getting cached data")
      return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setinv(s)
  s
}
