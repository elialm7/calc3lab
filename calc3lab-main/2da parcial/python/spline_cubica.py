import numpy as np
from scipy.interpolate import CubicSpline
import matplotlib.pyplot as plt

# Datos proporcionados
x = np.array([1, 2, 3])
y = np.array([-1, 2.5, 1])

# Crear la spline cúbica
spline = CubicSpline(x, y)

# Mostrar los coeficientes de la spline con dos decimales
coefficients = np.around(spline.c, decimals=2)
print("Coeficientes de la spline cúbica (con dos decimales):")
print(coefficients)

# Descripción de los coeficientes
print("\nEstos coeficientes representan los parámetros de la spline cúbica.")

# Visualizar la spline cúbica

# Generar más puntos para visualizar la spline
x_vals = np.linspace(1, 3, 100)
y_vals = spline(x_vals)

# Graficar los datos y la spline cúbica resultante
plt.figure(figsize=(8, 6))
plt.scatter(x, y, label='Datos', color='red')
plt.plot(x_vals, y_vals, label='Spline Cúbica', color='blue')
plt.title('Interpolación con Spline Cúbica')
plt.xlabel('x')
plt.ylabel('F(x)')
plt.legend()
plt.grid(True)
plt.show()
