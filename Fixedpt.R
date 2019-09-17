gx=function(x)
{
  return((5*x+10)^(1/3))
}

FPI=function(x)
{
  while((gx(x)-x) > 10^(-6))
  {
    x=gx(x)
  }
return(x)
}
