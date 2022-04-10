#A
p = 0.2
x = 3
P <- dgeom(x, p)
P

#B
mean = mean(rgeom(n = 10000, prob = p) == 3)
mean

#C
#Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

#D
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')

#E
rataan = 1 / p
varian = (1 - p) / (p ^ 2)
rataan
varian