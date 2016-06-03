## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Not too much to say here, it does exactly what it is said in the assignment description regaridng to the special vector, 
## but just applied to a matrix so some of the lines in the function code has been modificed to fit and re do it as a "Special Matrix" 
## following the same steps: "set value - get value"

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL

}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)

}


## Write a short comment describing this function
## Now, here it is a bit more interesting since this funtion actually checks if an inverse has been already calculated
## if cacheSolve has been run before, get a value of the input matrix, cache it, compute the value of the inverse and cache the inverse,
## to finalyy return the inverse!!!

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 	m <- x$getmatrix()
    	if(!is.null(m)) {
      	message("getting cached data")
      	return(m)
    }
    matrix <- x$get()
    m <- solve(matrix, ...)
    x$setmatrix(m)
    m

}
