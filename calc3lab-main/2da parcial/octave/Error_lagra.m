 pkg load symbolic#se carga symbolic
clc#borrar pantalla
clear#borrar variables

syms x
syms f1(x)
syms f2(x)
syms f3(x)#f(x) lagra
syms f4(x)#f(x) general
f=1;#Factorial

n=input('ingrese cantidad de puntos= ');
i=0;
i2=0;
aux=0;
aux2=1;
f2(x)=1;
f3(x)=0;
A=zeros(n,2);

while i<n
  i++;
  i
  A(i,1)=input('   x= ');
  A(i,2)=input('   y= ');
end
i=0;
#A=sym(A,'r');


while i<n
  i++;
  
  while i2<n
    i2++;
    
    if i2~=i
      f1(x)=x-A(i2,1);
      f2(x)=f2(x)*f1(x);
      aux= A(i,1)-A(i2,1);
      aux2=aux2*aux;
    end
  end
  f2(x)=expand(f2(x))
  disp(['      ',num2str(aux2)])
  f2(x)=f2(x)/aux2;
  f3(x)=f3(x)+(f2(x)*A(i,2));
  
  #Reinicio de variables de guardado
  i2=0;
  f2(x)=1;
  aux2=1;
end

f3(x)=expand(f3(x))


#Calculo de Derivada
f4(x)=input('   f(x)= ');
i=0;
while i<n
  i++;
  disp(['      Derivada= ',num2str(i)])
  f4(x)=diff(f4(x))
end

#Calculo de factorial
i=0;
while i<n
  i++;
  f=f*i;
end

i=0;
while i<n
  i++;
      f1(x)=x-A(i,1);
      f2(x)=f2(x)*f1(x);
end

f4(x)=(abs(f4(x))/f)*f2(x)
ezplot(f4)
  disp(['     Se puede encontrar los puntos maxiomoes de la funcion en la pagina'])