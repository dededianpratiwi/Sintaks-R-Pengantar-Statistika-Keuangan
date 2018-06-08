##Angsuran##
setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R")

angsuran=function(num, nilai, i, t, m=TRUE) 
  switch(num,
         satu={
           j=(i/m)
           n=(t*m)
           v=(1/(1+j))
           k_an_akhir=nilai/((1-((v)^n))/j)
           cat('Nilai angsuran untuk PV annuitas akhir :', k_an_akhir)
           },
           dua={
             j=(i/m)
             n=(t*m)
             v=(1/(1+j))
             k_sn_akhir=nilai/((((1+j)^n)-1)/j)
             cat('Nilai angsuran untuk AN annuitas akhir :', k_sn_akhir)
           },
           tiga={
             j=(i/m)
             n=(t*m)
             v=(1/(1+j))
             k_an_awal=nilai/((1-(v^n))/(j*v))
             cat('Nilai angsuran untuk PV annuitas awal :', k_an_awal)
            },
          empat={
            j=(i/m)
            n=(t*m)
            v=(1/(1+j))
            k_sn_awal=nilai/((((1+j)^n)-1)/(j*v))
            cat('Nilai angsuran untuk AN annuitas awal :', k_sn_awal)
          })

angsuran(1, 8000,0.08, 5, m=6)
angsuran(2, 8000,0.08, 5, m=6)
angsuran(3, 8000,0.08, 5, m=6)
angsuran(4, 8000,0.08, 5, m=6)
