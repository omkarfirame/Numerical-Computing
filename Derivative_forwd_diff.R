x = c(1,1.5,2)

FX = function(x)
{
  return(exp(2*x))
}
fx=FX(x)
F2=c()

for(i in 1:(length(x)-1))
{
 F1 = ((fx[i+1]-fx[i]) / (x[i+1]-x[i]))
 F2 = c(F2,F1)
}
F4=c()
for(j in (1:length(x)-2))
{
  F3 =( (F2[j+1]-F2[j]) / (x[j+2]-x[j]))
  F4= c(F4,F3)
}

X=1.5
dfx = F2[1]+ ((X - x[1])+(X-x[2]))*F4