clc;
fprintf("***METODO DE PUNTO FIJO***\n");

f  = input(" Escribe la funcion g(x) = ", "s");
f = inline(f);

xi = input("Escribe el valor de Xo = ");

cantidadIteraciones = input("Digite cantidad de iteraciones a realizar:  ");

contador = 0;
fprintf("------------------------------------------------|\n" )
fprintf("%s\t\t  %s\t\t  %s \n", "i", "xr", "|EA|" )
fprintf("------------------------------------------------|\n" )

function puntoFijo(f, xnueva, contador, cantidadIteraciones)

      fprintf("%.0f\t\t", contador);
      fprintf("%.6f\t", xnueva);

   while contador <= cantidadIteraciones
          if contador > 0
            xanterior = xnueva;
            xnueva = f(xanterior);
            fprintf("%.0f\t\t", contador);
            fprintf("%.6f\t", xnueva);
            ea = abs((xnueva - xanterior)/xnueva) *100;
            fprintf("%.2f", ea);

          endif

         fprintf("\n");
         contador = contador + 1;
   endwhile
   fprintf("------------------------------------------------|\n" )
   fprintf("LA RAIZ APROXIMADA: %.6f\n", xnueva);
endfunction

puntoFijo(f, xi, contador, cantidadIteraciones)
