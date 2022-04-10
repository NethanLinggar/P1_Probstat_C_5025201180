set.seed(0)
sd = 8
x = rnorm(100, 50, sd)

#A
rata = mean(x)
x1 = floor(mean(x))
x2 = ceiling(mean(x))

z <- function(input){
  return ((1 / (sd * sqrt(2*22/7))) * exp(1) ^ (-0.5 * ((input - rata) / sd) ^ 2))
}

z(x1)
z(x2)

sortedx = sort(x, decreasing = FALSE)
i = l = odd = even = 0
j = k = 1

for(i in 1:100){
  if (i %% 2== 0){
    even[j] <- (sortedx[i])
    j <- j + 1
  }
  else{
    odd[k] <- (sortedx[i])
    k <- k + 1
  }
}

combined = even
flipped_odd = sort(odd, decreasing = TRUE)

for(l in 1:50){
  combined[50 + l] <- flipped_odd[l]
}

plot(combined)

#B
hist(x, main = "5025201180_NethaneelPL_Probstat_C_DNhistogram", breaks = 50)

#C
variansi = sd ^ 2
variansi