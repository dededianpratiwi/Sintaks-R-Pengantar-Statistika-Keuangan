##ANNUITAS CICILAN##
setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R")
#ANNUITAS AKHIR dan AWAL##
#bunga majemuk#

annuitas=function(num, k, i, t, m=TRUE) 
  switch(num,
          satu={
            j=(i/m)
            n=(t*m)
            v=(1/(1+j))
            an_akhir=k*((1-((v)^n))/j)
            sn_akhir=k*((((1+j)^n)-1)/j)
            cat('an annuitas akhir:', an_akhir, "\n")
            cat('sn annuitas akhir:', sn_akhir)
          },
         dua = {
           j=(i/m)
           n=(t*m)
           v=(1/(1+j))
           an_awal=k*((1-(v^n))/(j*v))
           sn_awal=k*((((1+j)^n)-1)/(j*v))
           cat('an annuitas awal:', an_awal, "\n")
           cat('sn annuitas awal:', sn_awal)
          })

annuitas(1,2000, 0.08, 4, m=2)
annuitas(2,2000, 0.08,4, m=2)

annuitas(1, 10,0.12, 10)
annuitas(2, 1, 0.05, 5, m=12)
