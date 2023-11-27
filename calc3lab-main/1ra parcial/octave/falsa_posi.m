clc
funcion = input('Escriba la f(x) entre parentesis:','s')
funcion = inline(funcion);

xi = input('Ingrese el valor de xi inferior: ');
xu = input('Ingrese el valor de xu superior: ');

cantidad = input('Ingrese el numero de iteraciones:');
i=0;

if funcion(xi)*funcion(xu)<0

fprintf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s\n", 'i','xi','xu','xr','f(xi)','f(xr)', 'f(xi)*f(xr)')

while i < cantidad
    xr = xu-((funcion(xu)*(xi-xu))/(funcion(xi)-funcion(xu)));
    fprintf("%d\t", i+1)
    fprintf("%.4f\t", xi)
    fprintf("%.4f\t", xu)
    fprintf("%.4f\t", xr)
    fprintf("%.4f\t", funcion(xi))
    fprintf("%.4f\t", funcion(xr))

 if funcion(xi)*funcion(xr)<0
    fprintf("%.4f\t", funcion(xi)*funcion(xr))
    xu = xr;

 elseif funcion(xi)*funcion(xr)>0
    fprintf("%.4f\t", funcion(xi)*funcion(xr))
    xi = xr;

 elseif funcion(xr)==0
    fprintf("%s","raiz encontrada")
    break

 endif
    fprintf("\n")
i++;

endwhile

     fprintf(" la raiz aproximada es: %.4f \n", xr)
else
 fprintf("%s","no se puede resolver por este metodo")
endif
