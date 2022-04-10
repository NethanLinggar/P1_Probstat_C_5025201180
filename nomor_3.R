bayi = 4.5

#A
b_lahir = 6
peluang = dpois(b_lahir, bayi)
peluang

#B
hist(rpois(365, bayi), main = "Histogram Poisson")

#C
# Bandingkan hasil poin a dan b. Apa kesimpulan yang bisa didapatkan?

#D
rataan = varian = bayi
rataan
varian