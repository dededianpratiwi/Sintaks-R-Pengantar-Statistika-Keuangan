#Teknikal Analisis
setwd("D:\\Kuliah\\Semester 6\\Pengantar Statistika Keuangan\\Syntax R")

x=scan()

a.teknikal=function(num, x, n){
  nx=length(x)
  y=numeric(nx)
  switch(num,
        satu= { 
          for(i in n:nx){
            y[i]=mean(x[(i-n+1):i])}
            return(data.frame(cbind(x, SMA=y)))
        },
        dua= {
          SMA=numeric(nx)
          for (i in n:n){
            SMA[i]=mean(x[(i-n+1):i])}
          
          a=2/(n+1) 
          
          y[n-1]=SMA[n] #nilai previousnya
          for (i in n:nx){
            y[i]=a*(x[i]-y[i-1])+y[i-1]}
          y[n-1]=0
          return(data.frame(cbind(x, EMA=y)))
          },
        tiga={
          for(i in n:nx){
            y[i]=2*sum((n:1)*x[i:(i-n+1)])/(n*(n+1))}
          return(data.frame(cbind(x, WMA=y)))
        }
      )
}
SMA=a.teknikal(1,x,10)
EMA=a.teknikal(2,x,10)
WMA=a.teknikal(3,x,10)

analisisteknikal=data.frame(SMA, EMA$EMA, WMA$WMA)
analisisteknikal
