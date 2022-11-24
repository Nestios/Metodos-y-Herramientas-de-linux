#!/bin/bash

case $1 in 
	
	-n)	#verifica cantidad de argumentos  	Primer Ejercicio
		if [ "$#" != "3" ];then
			#mensaje error
			echo "Error! Ingresaste $# Argumentos, Proba con 3 (incluyendo -n)."
			echo "Ejemplo:"
			echo -e "\t ./tp.sh -n 10 5"
		else	
			
			#imprime numeros multiplicados
			function imprimir_numeros(){
               		for((num=$(($1+1));num<$2;num++));do
                       		echo "$(($num*2))"
               		done 
               		}
               		imprimir_numeros $2 $3 
		fi
		;;

	-p)	#verifica cantidad de argumentos	Segundo Ejercicio
		if [ "$#" != "2" ];then
			#mensaje error 
			echo "Error! Ingresaste $# Argumentos, Proba con 2 (incluyendo -p)"
			echo "Ejemplo:"
			echo -e "\t ./tp.sh File_name.*"
		else
			echo -e "Segundo Ejercicio\n"
			while IFS="," read estu not_1 not_2 not_3 
			do
				tot=$(($not_1 + $not_2 + $not_3))
				pro=$(($tot / 3))
				echo "Nota final de $estu Es: $pro"
			done < $2
		fi
		;;
	
	-l)	#verifica cantidad de argumentos	Tercer Ejercicio
		if [ "$#" != "2" ];then
			#mensaje error
			echo "Error! Ingresaste $# Argumentos, Proba Con 2 (incluyendo -l)"
			echo -e "Ejemplo: "
			echo -e "\t ./tp.sh -l nombre_archivo"
		else
			echo -e "Tercer Ejercicio\n"
			touch $2
			ls>$2 
			#echo "Se ha creado el archivo $2"
			#while IFS= read -r line
			#do
				echo $line
			#done < $2
		fi
		;;
esac

