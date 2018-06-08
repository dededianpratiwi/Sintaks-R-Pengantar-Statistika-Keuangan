setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R") 
#Fungsi Nilai Akumulasi

#fungsi untuk menghitung bunga : tunggal, majemuk nominal, dan majemuk kontinu
pilihbunga <- function(num, k, i, t, m=TRUE)
  #k : modal, i : bugna, t : tahun, m : banyaknya pemberi bunga dalam satu tahun
  #pilihbunga : pilhan(1: bunga tunggal, 2 : bunga majemuk nominal, 3 : bunga majemuk kontinu)
  
  switch(num, 
         satu = {
           bungatunggal =  k*(1+(i*t))
           cat("Nilai Akumulasi Bunga Tunggal : ", bungatunggal)
         },
         dua = {
           bungamajemuknominal =k*(1+(i/m))^(m*t)
           cat("Nilai Akumulasi Bunga Majemuk Nominal : ", bungamajemuknominal)
         },
         tiga = {
           bungamajemukkontinu =k*(exp(i*t))
           cat("Nilai Akumulasi Bunga Majemuk Kontinu : ", bungamajemukkontinu)
         })
