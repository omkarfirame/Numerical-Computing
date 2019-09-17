x=44.4444*pi/180
y=c(40*pi/180,45*pi/180,50*pi/180)
fu=function(y)
{
  return(sin(y))
}
f=sapply(y, fu)
lk=NULL
for(i in y)
{
z=y[!y %in% i]
l1=NULL
for(j in z)
{
  L=((x-j)/(i-j)) 
  l1=c(l1,L)
}

 L1=prod(l1)
 lk= c(lk,L1)
}
P=f[1]*lk[1]+f[2]*lk[2]+f[3]*lk[3] 
cat(sprintf("approximate value of function is :%e\t",P ))# Polynomial
error=prod(x-y)/factorial(length(y))                      # Error bound
cat(sprintf("Error Bound : %e\t",error))
cat(sprintf("Error :%e\t ",abs(sin(x)-P)))
if(error > abs(P-sin(x)))
{cat(sprintf("truncation error is within error bound"))}
