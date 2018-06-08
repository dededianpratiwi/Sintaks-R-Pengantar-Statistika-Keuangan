amortisasi<- function(an,i,m,t){
  n=m*t
  j=i/m
  v=(1+j)^-1
  k=an*j/(1-v^n)
  
  cat('t\t payment\t interest\t principal\t balance')
  cat('\n')
  
  for(t in 1:n){
    B=k*(1-v^(n-t+1))
    C=k*v^(n-t+1)
    D=k*(1-v^(n-t))/j
    cat(t,'\t',k,'\t',B,'\t',C,'\t',D,'\t')  #\t tab
    cat('\n')  #\ln newline
      
  }}
