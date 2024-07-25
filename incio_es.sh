#!/bin/bash

cat introduccion.txt

rutas_niveles=("./nivel_1/nivel1_A.sh" "./nivel_1/nivel1_B.sh" "./nivel_1/nivel1_C.sh")
opciones_disponibles=("1. Usar la puerta" "2. Investigar el ducto" "3. Saltar por la ventana")

./validar_opcion.sh "${rutas_niveles[@]}" "${opciones_disponibles[@]}"