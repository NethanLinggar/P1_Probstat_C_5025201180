set.seed(1)
lamb = 3

#A
probability = dexp(1, rate = lamb)
probability

#B
hist(rexp(10, rate = lamb), main = "Histogram Eksponensial (10 Bilangan Random)")
hist(rexp(100, rate = lamb), main = "Histogram Eksponensial (100 Bilangan Random)")
hist(rexp(1000, rate = lamb), main = "Histogram Eksponensial (1000 Bilangan Random)")
hist(rexp(10000, rate = lamb), main = "Histogram Eksponensial (10000 Bilangan Random)")

#C
n = 100
rataan = mean(rexp(n, rate = lamb))
varian = (sd(rexp(n, rate = lamb))) ^ 2
rataan
varian