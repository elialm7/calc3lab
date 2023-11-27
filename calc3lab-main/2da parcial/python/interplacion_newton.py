import numpy as np

# Datos proporcionados
valores_x = np.array([2, 0, -2])
valores_y = np.array([15, -1, -17])

# Calcular las diferencias divididas


def diferencias_divididas(valores_x, valores_y):
    n = len(valores_y)
    coeficientes = np.zeros(n)
    coeficientes[0] = valores_y[0]
    for j in range(1, n):
        for i in range(n - 1, j - 1, -1):
            valores_y[i] = (valores_y[i] - valores_y[i - 1]) / \
                (valores_x[i] - valores_x[i - j])
            coeficientes[j] = valores_y[j]
    return coeficientes

# Función de interpolación de Newton


def interpolacion_newton(valores_x, valores_y, punto_evaluar):
    coeficientes = diferencias_divididas(valores_x, valores_y)
    n = len(valores_x) - 1
    resultado = coeficientes[n]
    polinomio = f"{coeficientes[n]:.2f}"
    for i in range(n - 1, -1, -1):
        resultado = resultado * \
            (punto_evaluar - valores_x[i]) + coeficientes[i]
        polinomio += f" + {coeficientes[i]:.2f}" if coeficientes[
            i] >= 0 else f" - {abs(coeficientes[i]):.2f}"
        for j in range(i):
            polinomio += f" * (x {'-' if valores_x[j] < 0 else '+'} {abs(valores_x[j])})"
    return resultado, polinomio


# Pedir al usuario el punto a evaluar
punto_a_evaluar = float(input("Introduce el punto a evaluar: "))

# Realizar la interpolación en el punto dado
valor_interpolado, polinomio_resultante = interpolacion_newton(
    valores_x, valores_y, punto_a_evaluar)
print(f"Polinomio resultante: f(x) = {polinomio_resultante}")
print(f"Interpolación en f({punto_a_evaluar}): {valor_interpolado}")
