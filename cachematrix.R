## This is the R script cachematrix.R of the R project Programming Assignment2 for week three of the R ##Programming module of the Data Scientist specialization by Ron Collins.
## assignment: Caching the Inverse of a Matrix

## inversion is usually a costly computation and their may be some benefit to caching the inverse of a matrix ## rather than compute it repeatedly (there are also alternatives to matrix inversion that we will not discuss ## here). Your assignment is to write a pair of functions that cache the inverse of a matrix.

## Write the following functions:
    
##    makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. ## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should ## retrieve the inverse from the cache.

## Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a ## square invertible matrix, then solve(X) returns its inverse.

## For this assignment, assume that the matrix supplied is always invertible.

## In order to complete this assignment, you must do the following:
    
##    Fork the GitHub repository containing the stub R files at https://github.com/rdpeng/ProgrammingAssignmen## t2 to create a copy under your own account.
## Clone your forked GitHub repository to your computer so that you can edit the files locally on your own ##  ## machine.
## Edit the R file contained in the git repository and place your solution in that file (please do not rename ## the file).
## Commit your completed R file into YOUR git repository and push your git branch to the GitHub repository ## ## under your account.
## Submit to Coursera the URL to your GitHub repository that contains the completed R code for the assignment.

## In addition to submitting the URL for your GitHub repository, you will need to submit the 40 character ##SHA### -1 hash (as string of numbers from 0-9 and letters from a-f) that identifies the repository commit ## that contains the version of the files you want to submit. You can do this in GitHub by doing the following
#

## This function creates a special "matrix" object that can catche its inverse.



y <<- matrix(c(3,-7,5,2),2,2 )

makeCacheMatrix <- function(x = matrix()) {
    #q <<- matrix(c(3,-7,5,2),2,2 )
    m <- NULL
    set <- function(y) {
        y <- matrix(c(3,-7,5,2),2,2 )
        x <<- y        
    }
    get <- function() x
    setinverse <- function(solve)m <<- solve
    getinverse <- function() m
    xr <<- list(set= set, get= get, setinverse =setinverse, getinverse = getinverse)   
    print (xr)
} # end makeCacheMatrix function


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. ## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should ## ## retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- xr$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
} # end function cacheSolve