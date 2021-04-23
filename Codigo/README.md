@author 
@version 1.0
@date 15/04/2021


## Requisitos para poder correr el proyecto
-----

- A continuación se describe los elementos que se tienen que instalar para poder usar el proyecto tanto en Linux como en Windows.

## *Importante:*
-----

- **Para poder conectarse a la base de datos se tiene que tener instalado MariaDB/SQL y correr los scripts.**

## *Linux:*
-----

- Abrir una terminal en la carpeta de **Codigo/scripts** y hacer los siguientes pasos.

### *Primer paso:*
-----
Primero que todo se debe instalar nvm:

    sudo apt install curl
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

Una vez terminado, cerrar la terminal. Al volver abrirla verificar si se instalo usando el comando: *nvm --version*
<br>

### *Segundo paso:*
-----
Correr el siguiente comando:

    nvm install 14.4.0

### *Tercer paso:*
-----
Correr el siguiente comando:

    npm install mysql

Una vez finalizado se podra usar el modulo para conectarse a la base de datos.
<br>

### *Cuarto paso:*
-----
Correr el siguiente comando:

    npm install express

### *Quinto paso:*
-----
Correr el siguiente comando:

    npm install ejs

### *Sexto paso:*
-----
Correr el siguiente comando:

    npm install open

### *Septimo paso:*
-----
Correr el siguiente comando:

    npm install express-session

### *Octavo paso:*
-----
Correr el siguiente comando:

    node node.js

Una vez se corra el sexto paso, se abrira el navegador con el link: *http://localhost:8080* (Si el puerto 8080 esta ocupado se tiene que cambiar en el archivo *node.js*)

## *Windows:*
-----

 - Abrir una terminal en la carpeta de **Codigo/scripts** y hacer los siguientes pasos.

### *Primer paso:*
-----
Descargar el instalador recomendado en la página: https://nodejs.org/es/download/

### *Segundo paso:*
-----
Correr el siguiente comando:

    npm install mysql

Una vez finalizado se podra usar el modulo para conectarse a la base de datos.

### *Tercer paso:*
-----
Correr el siguiente comando:

    npm install express

### *Cuarto paso:*
-----
Correr el siguiente comando:

    npm install ejs

### *Quinto paso:*
-----
Correr el siguiente comando:

    npm install open

### *Sexto paso:*
-----
Correr el siguiente comando:

    npm install express-session

### *Septimo paso:*
-----
Correr el siguiente comando:

    node node.js

Una vez se corra el sexto paso, se abrira el navegador con el link: *http://localhost:8080* (Si el puerto 8080 esta ocupado se tiene que cambiar en el archivo *node.js*)