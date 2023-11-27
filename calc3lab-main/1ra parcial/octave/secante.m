#METODO DE LA SECANTE
clc
f = input("ingrese la funcion, no poner parentesis: ","s");
funcion = inline(f);

xi= input("punto de incicio 1: ");

xf= input("punto de inicio 2: ");

erro= input("error aproximado: ");

function ea = errora(xn,xp)
ea = abs( xn - xp );
end

if funcion(xi)-funcion(xf)~=0

 i=1;
 fprintf ("_________________________________________\n");
 fprintf("%s\t %s\t\t %s\n", 'I', 'XN', '|EA|');
 fprintf ("_________________________________________\n");
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xi);
 fprintf('%.5f\t', errora(xf,xi));
 fprintf ("\n");
while errora(xf,xi)>erro

 xn = xi-(((xi-xf)/(funcion(xi)-funcion(xf)))*funcion(xi));
 xf = xi;
 xi = xn;
 i++;
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xn);
 fprintf('%.5f\t', errora(xn,xf));
 fprintf ("\n");
endwhile;
 fprintf ("__________________________________________\n");

else
fprintf("no se puede calcular");

end
