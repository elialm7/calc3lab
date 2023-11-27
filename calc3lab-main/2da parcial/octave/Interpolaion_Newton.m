pkg load symbolic#se carga symbolic
clear
clc

syms x
syms f1(x)
syms f2(x)
n=input('Numero de puntos ');
i=0;
#A=zeros(n,n+2);
format rat

while i<n
  i++;
  i
  A(i,1)=i;
  A(i,2)=input('   x= ');
  A(i,3)=input('f(x)= ');
end

ii=3;
c=1;
r=0;
f1(x)=A(1,3);
#A=sym(A,'r');


while ii<n+2

  i=0;
  ii++;
  c=c+1;
  r=r+1;
  while i<n
    i++;
    if i>=c

      A(i,ii)=(A(i,r+2)-A((i-1),r+2))/(A(i,2)-A((i-r),2));

    end


    if i==c
      iii=1;
      f2(x)=A(i,ii);
      while iii<c
        f2(x)=f2(x)*(x-A(iii,2));
        iii=iii+1;
      endwhile
      f1(x)=f1(x)+f2(x);
    endif
  end
end
double(A)
double(f1(x))
double(expand(f1(x)))
