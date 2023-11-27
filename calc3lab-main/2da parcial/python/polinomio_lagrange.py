import numpy as np

# Puntos dados
points = np.array([[2, 1/2], [11/4, 4/11], [4, 1/4]])

# Extraer las coordenadas x e y
x = points[:, 0]
y = points[:, 1]

# Definir la función f(x) = 1/x


def f(x):
    return 1 / x

# Función para el polinomio de interpolación de Lagrange


def lagrange_interpolation(x, y, x_eval):
    result = 0
    n = len(x)
    for i in range(n):
        term = y[i]
        for j in range(n):
            if j != i:
                term *= (x_eval - x[j]) / (x[i] - x[j])
        result += term
    return result

# Calcular el polinomio de interpolación de Lagrange


def polynomial_lagrange(x, y):
    n = len(x)
    coefficients = np.zeros(n)
    for i in range(n):
        term = np.poly1d([1.0])
        for j in range(n):
            if i != j:
                term *= np.poly1d([1.0, -x[j]]) / (x[i] - x[j])
        term *= y[i]
        coefficients = np.polyadd(coefficients, term)
    return np.poly1d(coefficients)


# Calcular el polinomio de interpolación de Lagrange
poly = polynomial_lagrange(x, y)
print(f"Polinomio de interpolación de Lagrange: \n{poly}")

# Intervalo [2, 4]
interval = np.linspace(2, 4, 1000)  # Discretización del intervalo

# Calcular el error en cada punto del intervalo
errors = [abs(lagrange_interpolation(x, y, point) - f(point))
          for point in interval]

# Encontrar el máximo error y su ubicación en el intervalo
max_error = max(errors)
max_error_location = interval[errors.index(max_error)]

print(f"Error máximo en el intervalo [2, 4]: {max_error}")
print(f"Ubicación del error máximo: {max_error_location}")
