# EJEMPLO
# a=[1,1,1;5,10,15;100,300,400]
# b=[60;475;12500]


#BORRAR DATOS
clear

#Importacion de paquete symbolic para graficar
pkg load symbolic
syms t

#BORRAR PANTALLA
clc


A=input(' Matriz A = ')
B=input(' Matriz B = ')


#uncion de matrix A y B
C=[A,B];

#Tamaño de fila
fila=rows(C);
#Tamaño de columna
colu=columns(C);

#contador de pasos
cp=1;

#iteradores para recorrido en matrix
i1=1;
i2=1;

#cerar triangulo inferior y poner en 1 diagonal principal
while i1<colu;
  while i2<=fila;
    if i1<i2;
      C(i2,:)=C(i2,:)-(C(i2,i1).*C(i1,:));

      #Mostrar numero de pasos
      disp(['Paso ',num2str(cp)])
      disp(C)
      cp++;
    elseif i1==i2;
      #Convierte en 1 la diagonal
      C(i2,:)=C(i2,:)./C(i2,i1);

      #Mostrar numero de pasos
      disp(['Paso ',num2str(cp)])
      disp(C)
      cp++;
    endif
    i2++;
  end
  i2=1;
  i1++;
end

i1=1;
i2=1;

#cerar tiangulo superior
while i1<colu;
  while i2<=fila;
    if i1>i2;
      C(i2,:)=C(i2,:)-(C(i2,i1).*C(i1,:));

      #Mostrar numero de pasos
      disp(['Paso ',num2str(cp)])
      disp(C)
      cp++;
    endif
    i2++;
  end
  i2=1;
  i1++;
end

 disp("Matriz de Resultados")
 disp(C(:,colu))

