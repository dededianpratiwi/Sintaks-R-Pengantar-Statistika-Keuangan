logsaham<-function(miu,sig,so,t){
  mean=log(so)+(miu-((sig^2)/2))*t
  var=(sig^2)*t
  BB=exp(mean-1.96*(sqrt(var)))
  BA=exp(mean+1.96*(sqrt(var)))
 
  print(mean)
  print(var)
  print(BB)
  print(BA)
  
}