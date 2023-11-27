clc;
fprintf ("***METODO DE NEWTON RAPSHON***\n");

#tambien se puede utilizar   f  = input("escribe la funcion", "s")
f='e^(x)+(x)^3+2*(x)^2+10*(x)-20';
f = inline(f);

d='(e^(x)+3*(x)^2+4*(x)+10)';
d = inline(d);

xi=1;

erro=0.1;

i=1;
#funcion que retorna el error aproximado
function ea = errora(xa, xp)
    ea = abs(((xa - xp)/xa)*100);
end

if d(xi) == 0
     fprintf ('no se puede hallar una raiz');

     else

          xn= xi-(f(xi)/d(xi));
          fprintf ("____________________________________________\n");
          fprintf("%s\t\t %s\t\t  %s\n",'I','XN','|EA|  ');
          fprintf ("____________________________________________\n");

          while errora(xn, xi) > erro
                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn,xi));
                fprintf ("\n");
                xi=xn;
                xn= xi-(f(xi)/d(xi));
                i++;

          endwhile

                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn, xi));
                fprintf ("\n");

                fprintf ("____________________________________________\n");
                fprintf('\nLA RAIZ APROXIMADA ES:  %.8f\n', xn);

endif
