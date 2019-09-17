#while (x3 < 1e-6) {
x=c(2,2.528902,3)
g=function(x)
{
  return(x^3-6*x-1)
}
f=sapply(x,g)
f=c(f[1],f[2],f[3])
e0=(f[1]-f[2]) / (x[1]-x[2])
e1=(f[2]-f[3]) / (x[2]-x[3])

A0=(e0-e1)/(x[1]-x[2])
A1=(e0*(x[2]-x[3])-e1*(x[1]-x[3])) / (x[2]-x[1])
A2=f[3]

x41 = x[3] - (2*A2) / (A1 + sqrt((A1*A1)-4*A0*A2))
x42=x[3]-(2*A2)/(A1-sqrt(A1^2-4*A0*A2))
  if ( x41 > x[1] & x41 < x[3]) {x4 = x41} 
if (x42 > x[1] & x42 < x[3]) {x4=x42}
    print(x4)
    
    if(x4 > x[1] & x4 < x[2])
    {
      x3=x4
      x[2]=x3
      x[3]=x[2]
      if(x[1] < x3){x[1]=x3}
      if(x[2] < x3){x[2]=x3}
    }
    if(x4 > x[2] & x4 < x[3])
      {
       x3=x4
       x[1]=x[2]
       x[2]=x3
       if(x[2] < x3){x[2]=x3}
       if(x[3] < x3){x[3]=x3}
       }
    print(x3)
#}

    