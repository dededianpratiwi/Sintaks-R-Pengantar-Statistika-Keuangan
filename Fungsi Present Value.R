setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R") 
##Fungsi Present Value(PV) (k)##

fungsiPV <- function(num, A, i, t, m=TRUE)
  #A: Nilai Akumulasi, i : bunga, t : tahun, m : banyaknya pemberi bunga dalam satu tahun
  #fungsibunga : pilhan(1: bunga tunggal, 2 : bunga majemuk nominal, 3 : bunga majemuk kontinu)
  
  switch(num, 
         satu = {
           bungatunggal = A/(1+i*t)
           cat("Bunga Tunggal : ", bungatunggal)
         },
         dua = {
           bungamajemuknominal = A/(1+i/m)^(m*t)
           cat("Bunga Majemuk Nominal : ", bungamajemuknominal)
         },
         tiga = {
           bungamajemukkontinu = A/exp(i*t)
           cat("Bunga Majemuk Kontinu : ", bungamajemukkontinu)
         })


#contoh : A=3500, i=0.07, t=4, m=2 untuk majemuk nominal semester
fungsiPV(1,3500,0.07,4)
fungsiPV(2,3500,0.07,4)
fungsiPV(2,3500,0.07,4,m=2)
fungsiPV(3,3500,0.07,4)

