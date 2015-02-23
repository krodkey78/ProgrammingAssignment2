## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
    m<- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    get <- function() x
    getInv <- function()m
    setInv <- function(solve) m<<-solve
    list(set=set, get=get, getInv = getInv, setInv=setInv)
    
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    m <- x$getinv
    if(!is.null(m)){
      message("Getting cached data!")
      return (m)
    }
    data <- x$get
    m <- solve(data, ...)
    x$setInv(m)
    m
    
  
}
