## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL                               ## With the inverse property
set <- function( matrix ) {             ## Set the matrix
m <<- matrix
i <<- NULL
}
get <- function() {                     ## Get  the matrix
m                                       ## Return the matrix
}
setInverse <- function(inverse) {       ## Set the inverse of the matrix
i <<- inverse
}
getInverse <- function() {              ## Get the inverse of the matrix
i                                       ## Return the inverse property
}
list(set = set, get = get,              ## Return a list set and get
setInverse = setInverse,
getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         m <- x$getInverse()                            ## Return a matrix that is the inverse of 'x'
if( !is.null(m) ) {                                     ## Return the inverse 
message("getting cached data")
return(m)
}
data <- x$get()                                         ## Get the matrix 
m <- solve(data) %*% data                               ## Calculate the inverse using matrix multiplication
x$setInverse(m)                                         ## Set the inverse to the object
m                                                       ## Return the matrix
}

   
