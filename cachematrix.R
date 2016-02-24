## Put comments here that give an overall description of what your
## functions do

## Below is the makeCacheMatrix 

makeCacheMatrix <- function(x = matrix()) {
  ocal_m <- NULL                                         
  set <- function(y) {                                    
    cache_x <<- y                                  
    cache_m <<- NULL                                         
  }
  get <- function() cache_x                               
  set_cache_m <- function(local_m) cache_m <<- local_m            
  get_cache_m <- function() cache_m                       
  list(set = set, get = get,
       set_cache_m = set_cache_m,
       get_cache_m = get_cache_m)

}


## This is the cacheSolve matrix 

cacheSolve <- function(x, ...) {
    
  local_m<- x$get_cache_m()               
  if(!is.null(local_m)) {                 
    message("getting cached data")  
    return(local_m)
  }                                       
  startingmatrix <- x$get()                                        
  endingmatrix <- solve(startingmatrix)   
  x$set_cache_m(endingmatrix)             
  endingmatrix 
}

