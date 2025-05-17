install.packages("readxl")
install.packages("dplyr")
install.packages("ggplot2")
# Cargar librerías
library(readxl)
library(dplyr)
library(ggplot2)

# Cargar archivo Excel (reemplaza 'datos_animales.xlsx' con tu archivo)
# Si está en otra hoja que no sea la primera, especifica con sheet = "nombre_hoja"
datos <- read_excel("datos_animales.xlsx")

# Ver las primeras filas
head(datos)

# Estadísticas generales de talla
resumen_talla <- datos %>%
  summarise(
    media = mean(Talla, na.rm = TRUE),
    mediana = median(Talla, na.rm = TRUE),
    desviacion = sd(Talla, na.rm = TRUE),
    minimo = min(Talla, na.rm = TRUE),
    maximo = max(Talla, na.rm = TRUE),
    conteo = n()
  )
print("Estadísticas generales de Talla:")
print(resumen_talla)

# Estadísticas por sexo
resumen_por_sexo <- datos %>%
  group_by(Sexo) %>%
  summarise(
    media = mean(Talla, na.rm = TRUE),
    mediana = median(Talla, na.rm = TRUE),
    desviacion = sd(Talla, na.rm = TRUE),
    conteo = n()
  )
print("Estadísticas de Talla por Sexo:")
print(resumen_por_sexo)

# Histograma de Talla
ggplot(datos, aes(x = Talla)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histograma de Talla", x = "Talla", y = "Frecuencia")

# Boxplot de Talla por Sexo
ggplot(datos, aes(x = Sexo, y = Talla)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Distribución de Talla por Sexo", x = "Sexo", y = "Talla")
