# --- OPERACIONES BÁSICAS EN R ---

# VARIABLES NUMÉRICAS
a <- 10
b <- 5

# Suma, resta, multiplicación y división
suma <- a + b
resta <- a - b
multiplicacion <- a * b
division <- a / b

cat("Operaciones con variables numéricas:\n")
cat("Suma:", suma, "\n")
cat("Resta:", resta, "\n")
cat("Multiplicación:", multiplicacion, "\n")
cat("División:", division, "\n\n")

# VECTORES
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(10, 20, 30, 40, 50)

# Operaciones con vectores
suma_vectores <- v1 + v2
producto_vectores <- v1 * v2
media_v1 <- mean(v1)

cat("Operaciones con vectores:\n")
cat("Suma de vectores:", suma_vectores, "\n")
cat("Producto de vectores:", producto_vectores, "\n")
cat("Media de v1:", media_v1, "\n\n")

# MATRICES
m1 <- matrix(1:9, nrow = 3, ncol = 3)
m2 <- matrix(9:1, nrow = 3, ncol = 3)

# Operaciones con matrices
suma_matrices <- m1 + m2
producto_matrices <- m1 %*% m2
transpuesta_m1 <- t(m1)

cat("Operaciones con matrices:\n")
cat("Matriz 1:\n"); print(m1)
cat("Matriz 2:\n"); print(m2)
cat("Suma de matrices:\n"); print(suma_matrices)
cat("Producto de matrices:\n"); print(producto_matrices)
cat("Transpuesta de la Matriz 1:\n"); print(transpuesta_m1)