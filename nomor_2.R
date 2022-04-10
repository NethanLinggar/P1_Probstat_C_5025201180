pasien = 20
p_sembuh = 0.2

#A
peluang = dbinom(4, pasien, prob = p_sembuh, log = FALSE)
peluang

#B
hist(rbinom(4, pasien, prob = p_sembuh), ylab = "Frekuensi", main = "Histogram Binomial")

#C
rataan = pasien * (prob = p_sembuh)
varian = pasien * (prob = p_sembuh) * (1 - (prob = p_sembuh))
rataan
varian 