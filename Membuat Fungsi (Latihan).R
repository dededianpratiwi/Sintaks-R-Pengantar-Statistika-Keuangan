##Pengantar Statistika Keuangan 13 Maret 2018##

setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R") #membuat direktori file

#membuat fungsi
luassegitiga <- function(a, t){
  luas = 0.5*a*t
  return(luas)} #Return: perintah untuk mendefinisikan output fungsi tersebut}
#nama fungsi tidak dapat dipisah
luassegitiga(4,8)

#perkalian fungsi
perkalian <- function(a, b, c = TRUE, d = TRUE){
  kali = a*b*c/d
  return(kali)}
perkalian(4, 3, d = 2)
#nilai c dan d itu optional artinya boleh diinput boleh tidak (karena diberi TRUE)

#Looping dalam R
#Kontrol Loop for
for (i in 1:4){
  print("Alay boleh, asal taat aturan")
}

#kontrol if
a <- 22.2

if (is.numeric(a)){
  cat("Variabel a adalah suatu angka:", a)
}
#cat :mirip seperti print tetapi cat bisa menggabungkan antara beberapa kalimat
#jika is.numeric tidak terpenuhi maka tidak ada output yang dikeluarkan

#kontrol if...else
a <- "Nom...nom"

if (is.numeric(a)){
  cat("Variabel a adalah suatu angka:", a)
} else {
  cat("Variabel a bukan angka:", a)
}
#penyedian opsi jika benar dan jika salah

#kontrol if..else bertingkat atau berulang
a <- 7

if (a>10){
  print("Statistics ENTHUSIASTICS")
} else if (a>0 & a<= 10) {
  print("Data analis yang antusias dan berintegritas")
} else {
  print("Lima konsentrasi")
}

#kontrol switch (pilihan)
pilih <- switch(3, "Bahasa R", "Bahasa Python", "Bahasa C")
print(pilih)

#atau

pilih <- function(num, a, b)
  switch(num, 
         satu = {
           kali = a*b
           print(kali)
         },
         dua = {
           bagi = a/b
           print(bagi)
         }
  )

pilih("satu", 2, 5)
