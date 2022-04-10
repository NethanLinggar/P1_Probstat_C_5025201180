x = 2
v = 10

#A
probabilitas = dchisq(x, 10)
probabilitas

#B
hist(rchisq(100, v), xlab = "X", ylab = "V", main = "Histogram Chi-Square")

#C
rataan = v
varian = 2 * v
rataan
varian