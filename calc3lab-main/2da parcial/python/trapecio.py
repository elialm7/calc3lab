import numpy as np

# Definir la función a integrar (e^x^2)


def funcion(x):
    return np.exp(x**2)

# Método del trapecio para aproximar la integral


def trapecio(a, b, n):
    h = (b - a) / n
    integral = 0.5 * (funcion(a) + funcion(b))  # Suma de los extremos
    for i in range(1, n):
        integral += funcion(a + i * h)  # Suma de los puntos interiores
    return integral * h


# Pedir al usuario los límites del intervalo y la cantidad de subintervalos
limite_inferior = float(input("Introduce el límite inferior del intervalo: "))
limite_superior = float(input("Introduce el límite superior del intervalo: "))
numero_subintervalos = int(input("Introduce la cantidad de subintervalos: "))

# Calcular la aproximación de la integral usando el método del trapecio
resultado_integral = trapecio(
    limite_inferior, limite_superior, numero_subintervalos)
print(f"La aproximación de la integral es: {resultado_integral:.6f}")
