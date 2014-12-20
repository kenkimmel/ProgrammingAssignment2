## The combined functions allow a user to create a cache-able
## matrix that then can be used by the second function to create
## the inverse of the cache-able matrix and save it to a cache, 
## allowing the function to save computing time by retrieving the 
## cached inverse if it is available

## This function allows the user to create a defined matrix
## (x=matrix ()) and save it as an object that is a cache-able matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
                set<-function(y){
                x<<-y
                m<<-NULL
        }
        
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
        setmatrix=setmatrix,
        getmatrix=getmatrix)
}




## This function identifies with there is a solution for the function
## solve already cached for the defined cache-able matrix created by
## makeCacheMatrix. If not, the function runs Solve for the cache-able matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m<-x$getmatrix()   ## Gets the matrix inverse data if it is cached
        if(!is.null(m)){   ## If m already exists then return the cached data
        message("getting cached data")
        return(m)
      }
      matrix<-x$get()           ## If m does not exist, solve for the cacheable 
      m<-solve(matrix, ...)     ## matrix and return the matrix inverse m
      x$setmatrix(m)
      m
  }

}

