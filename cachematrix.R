## This function makes it more efficient to
## calculate the inverse of a matrix by creating a cached matrix

## madeCachematrix stores a list of function
makeCacheMatrix <- function(x = matrix()) {
        I <-NULL
        set <- function(y) {
                x <<- y
                I<<- NULL
        }
        get <- function() x
        setsolve <- function(slove) I <<- solve
        getsolve <-fuction() I
        list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}



##cacheSolve function caches the inverse of a matrix

cacheSolve <- function(x, ...) {
        I<-x$getsolve()
        if(!is.null(I)){
                message("getting cached data")
                return(I)
        }
        data <-x$get()
        I <-solve(data,...)
        x$setsolve(I)
        I
}
