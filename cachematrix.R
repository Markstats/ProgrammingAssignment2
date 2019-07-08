## Put comments here that give an overall description of what your
## functions do

## A function that converts a matrix to a special cachematrix. This is a list 
# with 4 options, 

makeCacheMatrix <- function(x = matrix()) {
  inv = NaN
  set <- function(m){
    x <<- m
    inv = inv
  }
  setInv <- function(inverse) inv <<- inverse
  getInv <- function()inv
  get <- function()x
  list(set = set,get = get,setInv = setInv,getInv = getInv)
}


## Check if the the inverse is casched. It loads the saved one if it is,
#otherwise it calculate the inverse and set the inverse variable to it.

cacheSolve <- function(x, ...) {
  inv = x$getInv()
  if (!is.nan(inv)){
    return(inv)
  }
  inv <- solve(x$get())
  x$setInv(inv)
  return(inv)
        ## Return a matrix that is the inverse of 'x'
}
