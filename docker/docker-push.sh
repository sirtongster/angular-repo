#!/bin/bash
## Script para subir una imagen al Docker Hub interno

if [ $# = 1 ] ; then

	docker login sr-docker-xp01.corp.cablevision.com.ar

	if [ ! -z $(docker images -q sr-docker-xp01.corp.cablevision.com.ar/angular-arq:$1) ]; then

		docker push sr-docker-xp01.corp.cablevision.com.ar/angular-arq:$1
		docker push sr-docker-xp01.corp.cablevision.com.ar/angular-arq:latest

	else 
		
		echo "No existe una imagen local con el tag asignado"
	
	fi

else
	echo "Se debe ingresar el tag de la imagen que desea subir"
fi
