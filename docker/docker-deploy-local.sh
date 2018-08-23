#!/bin/bash
## Script para levantar una imagen e instanciar un container de una version determinada en el Docker local

if [ $# = 1 ] ; then

# Compilo Angular

	cd ..

	ng build --prod

	cd docker

# Elimino si los hay la imagen y los containers que quiero reemplazar
	docker stop angular-arq
	docker rm angular-arq

	if [ ! -z $(docker images -q docker-hub/angular-arq:$1) ]; then

		docker rmi docker-hub/angular-arq:$1

	fi

	if [ ! -z $(docker images -q docker-hub/angular-arq:latest) ]; then

		docker rmi docker-hub/angular-arq:latest

	fi
# Creo la nueva imagen
	docker build -t docker-hub/angular-arq:$1 -t docker-hub/angular-arq:latest .

# Instancio el container
	docker run -d --restart=always --name angular-arq -p 9004:80 docker-hub/angular-arq:$1

else
	echo "Se debe ingresar el tag de la imagen que desea deployar."
fi
