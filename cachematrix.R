## The two functions in this code combine to:
## -create a matrix object
## -allow access to the object in order to set the value, retrieve the value.
## -calculate the inverse of the matrix and store the result in a "cache" variable
## -If the inverse has already been calculated, the previous result will be retrieved
##  without being recalculated, so as to save on processing time
## The functions are called by e.g.
## 1) selecting a matrix to invert :mat<-rbind(1:3,c(0,1,5),c(5,6,0))
## 2) calling CacheMatrix<-makeCacheMatrix(mat)
## 3) calling cacheSolve(CacheMatrix)



## makeCacheMatrix creates a special "matrix" and stores the matrix as well as its inverse
## The function is a list of four functions, which are evaluated when called by the cacheSolve function 
## The set and setinverse functions return the the matrix and inverse of the matrix respectively 
