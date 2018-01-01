## makeCacheMatirx function creates a matrix that is 4 by 4 utilizing free variables, y and m. 
## Then cacheSolve inverses the matrix created by makeCacheMatrix function using "Solve" function.

## create a matrix that is 4 by 4 containing 4 columns, get, setmean, setmean and getmean. 

	makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function (y) {
			x <<- y
			m <<- NULL
		}
		get <- function() x
		setsolve <- function (solve) m <<- solve
		getsolve <- function () m
		matrix (c(set = set, get=get, setmean = setmean, getmean = getmean),
		nrow=4, 
		ncol=4)
	}


## cacheSolve function, using "solve" function, inverses the matrix created earlier.
        
	
	cacheSolve <- function(x, ...) {
	  	m <- solve (makeCacheMatrix(x))
		  if (!is.null(m)) {			
			  	message("getting cached data")
				  return(m)
	  	}
		  data <- x$get()
		  m <- solve(data,...)
		  x$setsolve(m)
	  	m
  }


