valobligasi<-function(f,r,i,ttm,m)
{
  #f=nilai nominal
  #r= tingkat kupon
  #i=ingkat yield
  #ttm=time to maturnity
  #m= banyaknya pemberian bunga dalam satu tahun
  #t=tahun
  #Bm= harga obligasi untuk pemilik baru 
  #frk= harga oblogasi untuk pemilik lama
  
  t=ceiling(ttm*m+1)
  b=ttm*m-floor(ttm*m)
  k=1-b
  rbin=r/m
  ibin=i/m
  vbin= 1/(1+ibin)
  an = (1-vbin^t)/ibin
  Bt=f*rbin*an+f*vbin^t
  

#THEORETICAL MTHOD
Bf1=Bt*(1+ibin)^k
frk1=f*rbin*((1+ibin)^k-1)/ibin
Bm1=Bf1-frk1
cat("nilai oblogasi theori: ", Bm1, "\n")

#pratical method
Bf2=Bt*(1+k*ibin)
frk2=k*f*rbin
Bm2=Bf2-frk2
print(Bm2)
cat("nilai oblogasi theori: ", Bm2, "\n")

#semi theorical method
Bf3= Bt*(1+ibin)^k
frk3= k*f*rbin
Bm3=Bf3-frk3
print(Bm3)
cat("nilai oblogasi theori: ", Bm3, "\n")
}
valobligasi(100,0.05625, 0.068599, 4.94,2)
