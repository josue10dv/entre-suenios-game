#!/bin/bash

# Definimos las opciones válidas
opciones_validas=("1" "2" "3")

# Leer los arrays de argumentos
rutas_niveles=("${@:1:3}")       # Primeros 3 argumentos son rutas de niveles
opciones_disponibles=("${@:4}")  # El resto son opciones disponibles

# Variable global para almacenar el índice de la opción válida
index=-1

# Función para verificar si la opción es válida y establecer el índice
es_opcion_valida() {
  index=-1  # Reinicia el índice global
  for i in "${!opciones_validas[@]}"; do
    if [[ "$1" == "${opciones_validas[i]}" ]]; then
      index=$i  # Establece el índice de la opción válida
      return 1  # Retorna 1 para indicar que la opción es válida
    fi
  done
  return 0  # Retorna 0 para indicar que la opción no es válida
}

# Función para imprimir las opciones disponibles
imprimir_opciones_disponibles() {
  for i in "${!opciones_disponibles[@]}"; do
    echo "${opciones_disponibles[i]}"
  done
}

imprimir_opciones_disponibles

# Bucle infinito para pedir opciones al usuario
while true; do
  # Lee la entrada del usuario
  read -p "Ingresa la opción (1, 2, 3): " opcion

  # Llama a la función para verificar si la opción es válida
  es_opcion_valida "$opcion"
  if [[ $? -eq 1 ]]; then
    # Ruta del siguiente nivel de acuerdo a la opción del usuario
    bash "${rutas_niveles[index]}"
    break  # Salir del bucle después de procesar una opción válida
  else
    echo "Intenta nuevamente Mark, pero piensa dos veces lo que vas a hacer..."
  fi
done
