## Put comments here that give an overall description of what your
## functions do

## makeCacheMatirx function creates a matrix that is 4 by 4 utilizing free variables, y and m. 
## Then cacheSolve inverses "the matrix created by makeCacheMatrix function using "Solve" function.

## Write a short comment describing this function

	makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function (y) {
			x <<- y
			m <<- NULL
		}
		get <- function() x
		setmean <- function (mean) m <<- mean
		getmean <- function () m
		matrix (c(set = set, get=get, setmean = setmean, getmean = getmean),
		nrow=4, 
		ncol=4)
	}


## Write a short comment describing this function
        ## Return a matrix that is the inverse of 'x'
	
	cacheSolve <- function(x, ...) {
	  	m <- solve (makeCacheMatrix(x))
		  if (!is.null(m)) {			
			  	message("getting cached data")
				  return(m)
	  	}
		  data <- x$get()
		  m <- mean(data,...)
		  x$setmean(m)
	  	m
  }


