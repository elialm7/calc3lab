pkg load symbolic#se carga symbolic
clc#borrar pantalla
clear#borrar variables

syms x
syms f1(x)

n=input('ingrese cantidad de puntos= ');
i=0;
A=zeros(n,2);
A1=zeros((((n-2)*2)+2*n),(((n-2)*2)+2*n));
B=zeros((((n-2)*2)+2*n),1);
# ((n-2)*2)+2*n creacion de la matriz

while i<n
  i++;
  i
  A(i,1)=input('   x= ');
  A(i,2)=input('   y= ');
end
i=0;
ii=0;

while i<n
  i++;
  ii++;
  if 1==i
    disp([' a_',num2str(i),' + ',num2str(A(i,1)),'b_',num2str(i),' + ',num2str(A(i,1)^2),'c_',num2str(i),' + ',num2str(A(i,1)^3),'d_',num2str(i),' = ',num2str(A(i,2))]) 
    disp(['     '])
    A1(ii,(i)*4-3)=1;
    A1(ii,(i)*4-2)=A(i,1);
    A1(ii,(i)*4-1)=A(i,1)^2;
    A1(ii,(i)*4)=A(i,1)^3;
    B(ii,1)=A(i,2);
  elseif n==i
    disp([' a_',num2str(i-1),' + ',num2str(A(i,1)),'b_',num2str(i-1),' + ',num2str(A(i,1)^2),'c_',num2str(i-1),' + ',num2str(A(i,1)^3),'d_',num2str(i-1),' = ',num2str(A(i,2))]) 
    disp(['     '])
    A1(ii,(i-1)*4-3)=1;
    A1(ii,(i-1)*4-2)=A(i,1);
    A1(ii,(i-1)*4-1)=A(i,1)^2;
    A1(ii,(i-1)*4)=A(i,1)^3;
    B(ii,1)=A(i,2);
      ii++;
  else
    disp([' a_',num2str(i-1),' + ',num2str(A(i,1)),'b_',num2str(i-1),' + ',num2str(A(i,1)^2),'c_',num2str(i-1),' + ',num2str(A(i,1)^3),'d_',num2str(i-1),' = ',num2str(A(i,2))]) 
    disp([' a_',num2str(i),' + ',num2str(A(i,1)),'b_',num2str(i),' + ',num2str(A(i,1)^2),'c_',num2str(i),' + ',num2str(A(i,1)^3),'d_',num2str(i),' = ',num2str(A(i,2))]) 
    disp(['     '])

    A1(ii,(i-1)*4-3)=1;
    A1(ii,(i-1)*4-2)=A(i,1);
    A1(ii,(i-1)*4-1)=A(i,1)^2;
    A1(ii,(i-1)*4)=A(i,1)^3;
    B(ii,1)=A(i,2);
    ii++; 
    A1(ii,(i)*4-3)=1;
    A1(ii,(i)*4-2)=A(i,1);
    A1(ii,(i)*4-1)=A(i,1)^2;
    A1(ii,(i)*4)=A(i,1)^3;
    B(ii,1)=A(i,2);
  endif
end
i=0;
disp(['     '])

while i<n
  i++;
  if 1==i
  elseif n==i
  else
    disp([' b_',num2str(i-1),' + ',num2str(A(i,1)*2),'c_',num2str(i-1),' + ',num2str((A(i,1)^2)*3),'d_',num2str(i-1),' = ',' b_',num2str(i),' + ',num2str(A(i,1)*2),'c_',num2str(i),' + ',num2str((A(i,1)^2)*3),'d_',num2str(i)]) 
    disp(['     '])
    A1(ii,(i-1)*4-2)=1;
    A1(ii,(i-1)*4-1)=A(i,1)*2;
    A1(ii,(i-1)*4-0)=(A(i,1)^2)*3;
    A1(ii,(i)*4-2)=-1;
    A1(ii,(i)*4-1)=A(i,1)*-2;
    A1(ii,(i)*4-0)=(A(i,1)^2)*-3;
    B(ii,1)=0;
    ii++;
  endif
end
i=0;
disp(['     '])

while i<n
  i++;
  if 1==i
  elseif n==i
  else
    disp([' 2c_',num2str(i-1),' + ',num2str(A(i,1)*6),'d_',num2str(i-1),' = 2c_',num2str(i),' + ',num2str(A(i,1)*6),'d_',num2str(i)]) 
    disp(['     '])

    A1(ii,(i-1)*4-1)=2;
    A1(ii,(i-1)*4-0)=(A(i,1))*6;

    A1(ii,(i)*4-1)=-2;
    A1(ii,(i)*4-0)=(A(i,1))*-6;
    B(ii,1)=0;
    ii++;
  endif
end
i=0;
disp(['     '])

while i<n
  i++;
  if 1==i
    disp([' 2c_',num2str(i),' + ',num2str(A(i,1)*6),'d_',num2str(i),' = 0']) 
    disp(['     '])
    A1(ii,(i)*4-1)=2;
    A1(ii,(i)*4-0)=(A(i,1))*6;
    B(ii,1)=0;
    ii++;
  elseif n==i
    disp([' 2c_',num2str(i-1),' + ',num2str(A(i,1)*6),'d_',num2str(i-1),' = 0']) 
    disp(['     '])
    A1(ii,(i-1)*4-1)=2;
    A1(ii,(i-1)*4-0)=(A(i,1))*6;
    B(ii,1)=0;
    ii++;
  else
  endif
end
i=0;
ii=1;
disp(['     '])
A1

while i<(((n-2)*2)+2*n)
  i++;
 
  C=A1\B;
      disp(['     a_',num2str(ii),'= ',num2str(C(i,1))])
      i++;
      disp(['     b_',num2str(ii),'= ',num2str(C(i,1))])
      i++;
      disp(['     c_',num2str(ii),'= ',num2str(C(i,1))])
      i++;
      disp(['     d_',num2str(ii),'= ',num2str(C(i,1))])
      ii++;  
end
i=0;
ii=0;
disp(['     '])


  hold off
  hold on

while i<(((n-2)*2)+2*n)
  i++;
  ii++;

  disp(['     f(x)= ',num2str(C(i,1)),' + ',num2str(C(i+1,1)),'x + ',num2str(C(i+2,1)),'x^2 + ',num2str(C(i+3,1)),'x^3  ',' si x pertenece a [',num2str(A(ii,1)),',',num2str(A((ii+1),1)),']'])
  x1=A(ii,1):0.1:A(ii+1,1);
  y=C(i,1)+C(i+1,1).*x1+C(i+2,1).*x1.^2+C(i+3,1).*x1.^3;
  plot(x1,y)      
  i=i+3;
         
end
i=0;