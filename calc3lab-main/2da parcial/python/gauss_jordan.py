import numpy as np

# Ingreso de matrices A y B
A = np.array([[1, 1, 1], [5, 10, 15], [100, 300, 400]])
B = np.array([[60], [475], [12500]])

# Concatenación de la matriz A y B
C = np.hstack((A, B))

# Tamaño de filas y columnas de C
fila, colu = C.shape

# Verificar si la matriz es singular o tiene ceros en la diagonal principal
singular = np.linalg.matrix_rank(A) < min(fila, colu - 1)
ceros_diagonal = np.any(np.diagonal(A) == 0)

if singular or ceros_diagonal:
    if singular:
        print("La matriz A es singular. No se puede garantizar una solución única.")
    if ceros_diagonal:
        print("La matriz A tiene ceros en la diagonal principal.")
    print("No es posible continuar con la eliminación gaussiana.")
else:
    # Etapa de eliminación gaussiana
    for i in range(fila):
        if C[i, i] == 0:
            print(
                "División por cero detectada. No se puede garantizar una solución única.")
            break
        for j in range(i + 1, fila):
            factor = C[j, i] / C[i, i]
            for k in range(colu):
                C[j, k] -= factor * C[i, k]

    # Cálculo de los valores resultantes (última columna de C)
    resultados = C[:, colu - 1]
    print("Resultados del sistema de ecuaciones:")
    print(resultados)
