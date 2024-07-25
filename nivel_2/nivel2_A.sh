#!/bin/bash

cat ./nivel_2/revelacion.txt

rutas_niveles=("./nivel_2/final_1.sh" "./nivel_2/op_alicia_ninia.sh" "./nivel_2/final_2.sh")
opciones_disponibles=("1. Caminar hacia la Naciones Unidas" "2. Consolar a Alicia niña" "3. Hablar con Alicia adulta")

bash ./validar_opcion.sh "${rutas_niveles[@]}" "${opciones_disponibles[@]}"