#Eric Flamm
#Test cacheMatrix code 
#populate a small square matrix; run makeCacheMatrix to create a special matrix
#use cacheSolve twice - first to populate cache, second to use it
print("-----------------")
print("Testing with Known 2x2 Matrix")
print("---------------")
mat<-matrix(1:4,nrow=2)
print(mat)
source('T:/RWorking/ProgrammingAssignment2/cachematrix.R')
mat2<-makeCacheMatrix(mat)
print(cacheSolve(mat2))
print(cacheSolve(mat2))
print("-----------------")
print('Testing with Random 3x3 Matrix',quote=F)
print("---------------")
mat<-matrix(sample(1:20,9),nrow=3)
print(mat)
mat2<-makeCacheMatrix(mat)
print(cacheSolve(mat2))
print(cacheSolve(mat2))
mat2inv<-cacheSolve(mat2)
print("Multiply test matrix by cached inverse",quote=F)
print(round(mat2$get() %*% mat2inv,2))