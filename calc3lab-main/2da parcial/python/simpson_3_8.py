import numpy as np

# Definir la función a integrar (e^x^2)


def funcion(x):
    return np.exp(x**2)

# Método de Simpson 3/8 para aproximar la integral


def simpson_3_8(a, b, n):
    if n % 3 != 0:  # Verificar si el número de subintervalos es múltiplo de 3
        raise ValueError(
            "El número de subintervalos debe ser múltiplo de 3 para el método de Simpson 3/8")

    h = (b - a) / n
    integral = funcion(a) + funcion(b)  # Suma de los extremos
    sum1 = 0
    sum2 = 0

    for i in range(1, n):  # Sumas alternadas
        if i % 3 == 0:
            sum2 += funcion(a + i * h)
        else:
            sum1 += funcion(a + i * h)

    integral = (3 * h / 8) * (integral + 3 * sum1 + 2 * sum2)
    return integral


# Pedir al usuario los límites del intervalo y la cantidad de subintervalos (debe ser múltiplo de 3)
limite_inferior = float(input("Introduce el límite inferior del intervalo: "))
limite_superior = float(input("Introduce el límite superior del intervalo: "))
numero_subintervalos = int(
    input("Introduce la cantidad de subintervalos (debe ser múltiplo de 3): "))

# Calcular la aproximación de la integral usando el método de Simpson 3/8
resultado_integral = simpson_3_8(
    limite_inferior, limite_superior, numero_subintervalos)
print(f"La aproximación de la integral es: {resultado_integral:.6f}")
