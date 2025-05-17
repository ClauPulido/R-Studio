# Instalar paquetes si no los tienes
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# Leer datos desde un archivo CSV
datos <- read.csv("datos.csv")

# Mostrar los primeros datos
print(head(datos))

# Gráfico de barras
ggplot(datos, aes(x = Categoria, y = Valor, fill = Categoria)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Gráfico de barras", x = "Categoría", y = "Valor")

# Gráfico de líneas
ggplot(datos, aes(x = Tiempo, y = Medida)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  theme_minimal() +
  labs(title = "Gráfico de líneas", x = "Tiempo", y = "Medida")

# Gráfico de dispersión
ggplot(datos, aes(x = Valor, y = Medida)) +
  geom_point(color = "darkgreen") +
  theme_minimal() +
  labs(title = "Gráfico de dispersión", x = "Valor", y = "Medida")
