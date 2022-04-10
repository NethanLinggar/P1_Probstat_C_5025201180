# P1_Probstat_C_5025201180
 Pengerjaan Praktikum 1 dari mata kuliah Probabilitas dan Statistika 2022

| Nama                       | NRP        |
|----------------------------|------------|
| Nethaneel Patricio Linggar | 5025201180 |

<br>

## Soal 1
Soal ini dikerjakan menggunakan Distribusi Geometrik.

### Poin A
> Peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi.
Menggunakan fungsi bawaan dgeom(). Didapatkan hasil 0.1024.
```R
#A
p = 0.2
x = 3
P <- dgeom(x, p)
P
```
![1a](screenshots/1a.jpg)

### Poin B
> Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi geometrik acak () == 3).
Mencari mean menggunakan mean() pada rgeom() untuk mendapatkan data acak. Hasil yang didapatkan pada saat itu dalah 0.1035. 
```R
#B
mean = mean(rgeom(n = 10000, prob = p) == 3)
mean
```
![1b](screenshots/1b.jpg)

### Poin D
> Histogram Distribusi Geometrik, peluang X = 3 gagal sebelum sukses pertama.
Menggunakan fungsi hist() untuk menghasilkan histogram dari fungsi rgeom().
```R
#D
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
```
![1d](screenshots\1d.jpg)

### Poin E
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
Rataan dan varian dicari menggunakan formula yang sudah ada. Hasil yang didapatkan adalah μ=5 dan σ²=20.
```R
#E
rataan = 1 / p
varian = (1 - p) / (p ^ 2)
rataan
varian
```
![1e](screenshots/1e.jpg)

<br>

## Soal 2
Soal ini dikerjakan menggunakan Distribusi Binomial.
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.
```R
pasien = 20
p_sembuh = 0.2
```

### Poin A
> Peluang terdapat 4 pasien yang sembuh.
Menggunakan fungsi bawaan dbinom(). Didapatkan hasil 0.2181994.
```R
#A
peluang = dbinom(4, pasien, prob = p_sembuh, log = FALSE)
peluang
```
![2a](screenshots/2a.jpg)

### Poin B
> Gambarkan grafik histogram berdasarkan kasus tersebut.
Menggunakan fungsi hist() untuk menghasilkan histogram dari fungsi rbinom(). Digunakan rbinom() supaya mendapatkan data yang random.
```R
hist(rbinom(4, pasien, prob = p_sembuh), ylab = "Frekuensi", main = "Histogram Binomial")
```
![2b](screenshots/2b.jpg)

### Poin C
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
Rataan dan varian dicari menggunakan formula yang sudah ada. Hasil yang didapatkan adalah μ=4 dan σ²=3.2.
```R
#C
rataan = pasien * (prob = p_sembuh)
varian = pasien * (prob = p_sembuh) * (1 - (prob = p_sembuh))
rataan
varian
```
![2c](screenshots/2c.jpg)
<br>

## Soal 3
Soal ini dikerjakan menggunakan Distribusi Poisson.
> Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari.
```R
bayi = 4.5
```

### Poin A
> Peluang bahwa 6 bayi akan lahir di rumah sakit ini besok.
Menggunakan fungsi bawaan dpois(). Didapatkan hasil 0.1281201.
```R
#A
b_lahir = 6
peluang = dpois(b_lahir, bayi)
peluang
```
![3a](screenshots/3a.jpg)

### Poin B
> Histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365).
Menggunakan fungsi hist() untuk menghasilkan histogram dari fungsi rpois() dengan n=365. Digunakan rpois() supaya mendapatkan data yang random.
```R
#B
hist(rpois(365, bayi), main = "Histogram Poisson")
```
![3b](screenshots/3b.jpg)

### Poin D
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
Rataan dan varian yang ada sudah sesuai dengan lambda pada soal, yaitu rata-rata historis bayi lahir.
```R
rataan = varian = bayi
rataan
varian
```
![3d](screenshots/3d.jpg)

<br>

## Soal 4
Soal ini dikerjakan menggunakan Distribusi Chi-Square.
> Diketahui nilai x = 2 dan v = 10.
```R
x = 2
v = 10
```

### Poin A
> Fungsi Probabilitas dari Distribusi Chi-Square.
Menggunakan fungsi bawaan dchisq(). Didapatkan hasil 0.007664155.
```R
#A
probabilitas = dchisq(x, 10)
probabilitas
```
![4a](screenshots/4a.jpg)

### Poin B
> Histogram dari Distribusi Chi-Square dengan 100 data random.
Menggunakan fungsi hist() untuk menghasilkan histogram dari fungsi rchisq(). Digunakan rchisq() supaya mendapatkan data yang random. x-axis disini menggambarkan X dan y-axis disini menggambarkan V.
```R
#B
hist(rchisq(100, v), xlab = "X", ylab = "V", main = "Histogram Chi-Square")
```
![4b](screenshots/4b.jpg)

### Poin C
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square
Rataan dan varian dicari menggunakan formula yang sudah ada. Hasil yang didapatkan adalah μ=10 dan σ²=20.
```R
#C
rataan = v
varian = 2 * v
rataan
varian
```
![4c](screenshots/4c.jpg)

<br>

## Soal 5
Soal ini dikerjakan menggunakan Distribusi Eksponensial.
> Petunjuk: Gunakan set.seed(1)
```R
set.seed(1)
```

### Poin A
> Fungsi Probabilitas dari Distribusi Exponensial
Menggunakan fungsi bawaan dexp(). Didapatkan hasil 0.1493612.
```R
#A
probability = dexp(1, rate = lamb)
probability
```
![5a](screenshots/5a.jpg)

### Poin B
> Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
Menggunakan fungsi hist() untuk menghasilkan histogram dari fungsi rexp(). Digunakan rexp() supaya mendapatkan data yang random dan pada jumlah data yang berbeda-beda.
```R
#B
hist(rexp(10, rate = lamb), main = "Histogram Eksponensial (10 Bilangan Random)")
hist(rexp(100, rate = lamb), main = "Histogram Eksponensial (100 Bilangan Random)")
hist(rexp(1000, rate = lamb), main = "Histogram Eksponensial (1000 Bilangan Random)")
hist(rexp(10000, rate = lamb), main = "Histogram Eksponensial (10000 Bilangan Random)")
```
![5b](screenshots/5b1.jpg)
![5b](screenshots/5b2.jpg)
![5b](screenshots/5b3.jpg)
![5b](screenshots/5b4.jpg)

### Poin C
> Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Rataan dan varian dicari menggunakan formula yang sudah ada dengan n=100 dan λ=3. Hasil yang didapatkan adalah μ=0.3675159 dan σ²=0.09725574.
```R
#C
n = 100
rataan = mean(rexp(n, rate = lamb))
varian = (sd(rexp(n, rate = lamb))) ^ 2
rataan
varian
```
![5c](screenshots/5c.jpg)

<br>

## Soal 6
WIP
