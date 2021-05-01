# Proyecto_Planificacion
Proyecto pytest para la pipeline de Jenkins para la asignatura Planificación y Gestión de Infraestructuras TIC.

# Pasos para desplegar la arquitectura

1. Primero clonamos el repositorio de nuestro proyecto con el que probaremos que el pipeline funciona correctamente: 
git clone https://github.com/Carfer10/Proyecto_Planificacion.git

2. Iniciamos Jenkins:
sudo service start jenkins

3. Abrimos la dirección localhost:8080 en nuestro navegador.

4. Vamos a "Configure Jenkins" > "Manage Plugins" > Pestaña "Available" > Buscamos e instalamos el plugin "Docker Pipeline"

5. Volvemos al Dashboard y seleccionamos "New Item", introducimos el nombre de nuestra pipeline y seleccionamos el tipo "Multibranch Pipeline"

6. Posteriormente, escribiremos un Display Name y en la pestaña "Branch sources" seleccionaremos la opción GitHub y pegaremos la URL de nuestro repositorio: https://github.com/Carfer10/Proyecto_Planificacion.git, el resto de opciones las dejaremos por defecto.

7. Le damos a "Save" y el proceso de creación de nuestra Pipeline definida en el Jenkinsfile del repositorio debería comenzar, con su correcta creación y ejecución de la imagen docker.

8. Para que el proceso se vuelva a lanzar cada vez que se haga un commit al repositorio debemos hacer visible nuestro jenkins local a GitHub, para ello usaremos ngrok (después de seguir el proceso de instalación recomendado por la página oficial): ./ngrok http 8080, este comando nos dará una ip pública del tipo https://XXXXXX.ngrok.io, iremos a nuestro repositorio GitHub y añadiremos la url https://XXXXX.ngrok.io/github-webhook/ a nuestros webhooks.

9. Cuando realicemos algún cambio en nuestro repositorio, se repetirá el proceso de ejecución de la pipeline y compilación de nuestro docker con el conjunto de tests.


