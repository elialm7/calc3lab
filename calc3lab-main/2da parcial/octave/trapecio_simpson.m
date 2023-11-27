%Integracion Nemerica
%prueba: m=6 f(x)=e^(x^2)  intervalo a=0;b=1
clc %permite borrar el area de trabajo
clear   %permite borrar las variables almacenadas
pkg load symbolic#se carga symbolic

format long; %format long permite utilizar la maxima capacidad del computador

%cargamos valores


syms x
syms F(x)

fprintf('1- trapecio \n2- simpson 1/3 \n3- simpson 3/8 \n');
i=input('Opcion :  ');

switch i
  case 1

m=input('ingrese m:  ');
fprintf(' Ingrese los intervalos \n');
a=input(' Ingrese a:  ');
b=input(' Ingrese b:  ');
F(x)=input(' Ingrese la funcion: ');

%----transformamos a variable simbolica
    a=sym(a,'r');
    b=sym(b,'r');

%calculamos las derivadas hasta el orden 4
d1=diff(F) %primera derivadas
d2=diff(d1) %segunda derivada
d3=diff(d2) %tercera derivada
d4=diff(d3) %cuarta derivada

%calculamos resultados
%---TRAPECIO
    fprintf('trapecio\n');
    fprintf('Simple\n');
    m1=1
    h=((b-a)/m1)
    Its=(h/2)*(F(a)+F(b));
    double(Its)
    fprintf('M2\n');
    Mts=(d2(a)+d2(b))/2;
    double(Mts)
     fprintf('Error simple\n');
    Erts=((h^3/12)*m1*Mts);
    double(Erts)

    fprintf('Compuesto\n');
    h=(b-a)/m
    a
    x1=a+h
    x2=x1+h
    x3=x2+h
    x4=x3+h
    x5=x4+h
    x6=x5+h
    Itc=((h/2)*((F(a))+(2*((F(x1))+(F(x2))+(F(x3))+(F(x4))+(F(x5))))+(F(x6))));
    double(Itc)
    fprintf('M2\n');
    Mtc=((d2(a)+d2(x1)+d2(x2)+d2(x3)+d2(x4)+d2(x5)+d2(x6))/2);
    double(Mtc)
    fprintf('Error simple\n');
    Ertc=((h^3/12)*m*Mtc);
    double(Ertc)

fprintf('\n---Tabla de ERROR---\n \n')
fprintf(' Metodos -  ER_simple  -  ER_Compuesto \n')
disp(['  Trapecio  -  ',num2str(double(Erts)),'   -  ',num2str(double(Ertc))])

  case 2

    m=input('ingrese m:  ');
fprintf('\n Ingrese los intervalos \n');
a=input(' Ingrese a: ');
b=input(' Ingrese b: ');
F(x)=input(' Ingrese la funcion: ');

%----transformamos a variable simbolica
    a=sym(a,'r');
    b=sym(b,'r');

%calculamos las derivadas hasta el orden 4
d1=diff(F) %primera derivadas
d2=diff(d1) %segunda derivada
d3=diff(d2) %tercera derivada
d4=diff(d3) %cuarta derivada

%---SIMPSON 1/3
    fprintf('simpson 1/3 \n');
    fprintf('Simple\n');
    m2=2
    h=(a-b)/m2
    a
    x1=a+h
    x2=x1+h
    Iss=(h/3)*(F(a)+(4*F(x1))+F(x2));
    double(Iss)
    fprintf('M4\n');
    Mss=(d4(a)+d4(x1)+d4(x2))/2;
    double(Mss)
    fprintf('Error simple\n');
    Erss=(h^5/180)*m2*Mss;
    double(Erss)

    fprintf('Compuesto\n');
    h=(b-a)/m
    a
    x1=a+h
    x2=x1+h
    x3=x2+h
    x4=x3+h
    x5=x4+h
    x6=x5+h
    Isc=(h/3)/((F(a)+(4*(F(x1)+F(x3)+F(x5))+(2*(F(x2)+F(x4)))+F(x3))));
    double(Isc)
    fprintf('M4\n');
    Msc=(d4(a)+d4(x1)+d4(x2)+d4(x3)+d4(x4)+d4(x5)+d4(x6))/2;
    double(Msc)
    fprintf('Error Compuesto\n');
    Ersc=(h^5/180)*m*Msc;
    double(Ersc)

fprintf('\n---Tabla de ERROR---\n \n')
fprintf(' Metodos -  ER_simple  -  ER_Compuesto \n')
disp(['  Simpson 1/3  -  ',num2str(double(Erss)),'   -  ',num2str(double(Ersc))])

  case 3

m=input('ingrese m: \n ');
fprintf('\n Ingrese los intervalos ');
a=input(' Ingrese a: ');
b=input(' Ingrese b:  ');
F(x)=input(' Ingrese la funcion:  ');

%----transformamos a variable simbolica
    a=sym(a,'r');
    b=sym(b,'r');

%calculamos las derivadas hasta el orden 4
d1=diff(F) %primera derivadas
d2=diff(d1) %segunda derivada
d3=diff(d2) %tercera derivada
d4=diff(d3) %cuarta derivada

%---SIMPSON 3/8
    fprintf('simpson 3/8 \n');
    fprintf('Simple\n');
    m3=3
    h=(a-b)/m3
    x1=a+h
    x2=x1+h
    x3=x2+h
    Is=(((3*h)/8)*(F(a)+(3*(F(x1)+F(x2)))+F(x3)));
    double(Is)
    fprintf('M4\n');
    Ms=(d4(a)+d4(x1)+d4(x2)+d4(x3))/2;
    double(Ms)
    fprintf('Error simple\n');
    Ers=(h^5/240)*m3*Ms;
    double(Ers)

    fprintf('Compuesto\n');
    h=(b-a)/m
    a
    x1=a+h
    x2=x1+h
    x3=x2+h
    x4=x3+h
    x5=x4+h
    x6=x5+h
    Ic=(((3*h)/8)*(F(a)+(3*(F(x1)+F(x2)+F(x4)+F(x5)))+(2*F(x3))+F(x6)));
    double(Ic)
    fprintf('M4\n');
    Mc=(d4(a)+d4(x1)+d4(x2)+d4(x3)+d4(x4)+d4(x5)+d4(x6))/2;
    double(Mc)
    Erc=(h^5/240)*m*Mc;
    double(Erc)

fprintf('\n---Tabla de ERROR---\n \n')
fprintf(' Metodos -  ER_simple  -  ER_Compuesto \n')
disp(['  Simpson 3/8  -  ',num2str(double(Ers)),'   -  ',num2str(double(Erc))])

endswitch
