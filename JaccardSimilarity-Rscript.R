
library("recommenderlab")

d = read.table("C:\\Aswath\\Materials\\bigdata\\Data\\userout.csv",header=FALSE,sep=",",fill=FALSE,strip.white=TRUE)

# Create a binary matrix

r = as(d,"binaryRatingMatrix")

# creating real rating matrix to get the actual data

rr = as(d,"realRatingMatrix")

model <- Recommender(r, method ="IBCF", param=list(method="jaccard",k=3))

# to get the similarity matrix
similarity(r, method = "jaccard", which = "items")

# Predicting for the same user data, any other data set can be passed as a matrix

recom <- predict(model,r,n=3)


# To get the actual data
realist <- as(rr,"list")

# Recommendation
reclist <- as(recom,"list")

