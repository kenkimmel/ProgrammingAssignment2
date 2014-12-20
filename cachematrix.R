## The combined functions allow a user to create a cache-able
## matrix that then can be used by the second function to create
## the inverse of the cache-able matrix and save it to a cache, 
## allowing the function to save computing time by retrieving the 
## cached inverse if it is available

## This function allows the user to create a defined matrix
## (x=matrix ()) and save it as an object that is a cache-able matrix

makeCacheMatrix <- function(x = matrix()) {

}


## This function identifies with there is a solution for the function
## solve already cached for the defined cache-able matrix created by
## makeCacheMatrix. If not, the function runs Solve for the cache-able matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

