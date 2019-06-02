

## Open a starFile:

exoTrain <- read.csv("~/Documents/DataSets/Kepler/Kaggle/V3/exoTrain.csv")

## Extract a Star, it is a row:

flux <- exoTrain[36,]

## Visualise the Star:

plot(matrix(flux))

## Generate a sequence, to be the index:

sequence <- seq(1,3198)

## Merge the two into a 2 x n matrix:

keplerFlux <- rbind(sequence, flux)

## Transpose, into an n x 2 matrix:

keplerFlux <- t(keplerFlux)

## Strip the row names:

row.names(keplerFlux) <- NULL

## Correctly name the columns:

colnames(keplerFlux)[1] <- "INDEX"
colnames(keplerFlux)[2] <- "FLUX"

## Export the resultant data, removing the inherent row numbers:

write.csv(keplerFlux, "~/Desktop/KeplerFlux3.csv", row.names = FALSE )





