## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#store a list of functions
makeCacheMatrix <- function(x = matrix()) {

         inv<- NULL
         #changes the vector y and stored in the main function
         set<- function(y){
               x<<- y
               #assign NULL to the value of inverse
               inv<<- NULL
}
   #returns vector x and stored in the main function
   get<- function() x

   #store the value of the input in a variable inv into setinverse dan return(getinverse)
   setinverse<- function(inverse) inv<<- inverse
   getinverse<- function() inv

   #store two functions
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv<- x$getinverse()
     if(!is.null(inv)){
          message("getting cached data")
          return(inv)
     }
     data<- x$get()
     inv<- solve(data)
     x$setinverse(inv)
     inv
}
