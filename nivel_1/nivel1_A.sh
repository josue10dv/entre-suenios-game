#!/bin/bash

cat ./nivel_1/op_puerta_1.txt
cat ./nivel_1/despertar.txt
cat ./nivel_1/op_puerta_2.txt

rutas_niveles=("./nivel_1/final_1.sh" "./nivel_1/op_televisor.sh" "./nivel_1/final_complementario.sh")
opciones_disponibles=("1. Regresar" "2. Mirar el televisor" "3. Ir al baño")

bash ./validar_opcion.sh "${rutas_niveles[@]}" "${opciones_disponibles[@]}"