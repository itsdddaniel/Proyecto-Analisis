@author 
@version 1.0
@date 15/04/2021

# Requisitos para poder correr el proyecto
A continuación se describe los elementos que se tienen que instalar para poder usar el proyecto tanto en Linux como en Windows.

# Importante:
**Para poder conectarse a la base de datos se tiene que tener instalado MariaDB/SQL.**

# Linux:
Abrir una terminal en la carpeta de **Codigo/scripts** y hacer los siguientes pasos.

### *Primer paso:*
Primero que todo se debe instalar node.js

    sudo apt install nodejs;
    sudo apt install -y aptitude;
    sudo aptitude install npm;

El último comando mostrara un mensaje parecido a:

    The following NEW packages will be installed:
        *VARIOS PAQUETES*                               

    Do you want to continue? [Y/n]

**Seleccionar la letra Y**

Se empezara a instalar varios paquetes, puede tardar unos cuantos minutos.
<br>

### *Segundo paso:*

Correr el siguiente comando:

    npm install mysql

Una vez finalizado se podra usar el modulo para conectarse a la base de datos.
<br>

### *Tercer paso:*

Correr el siguiente comando:

    npm install express

### *Cuarto paso:*

Correr el siguiente comando:

    npm install ejs

### *Quinto paso:*

    npm install open

### *Sexto paso:*

    node node.js

Una vez se corra el sexto paso, se abrira el navegador con el link: *http://localhost:8080* (Si el puerto 8080 esta ocupado se tiene que cambiar en el archivo *node.js*)

# Windows:
Abrir una terminal en la carpeta de **Codigo/scripts** y hacer los siguientes pasos.

### *Primer paso:*

Descargar el instalador recomendado en la página: https://nodejs.org/es/download/

### *Segundo paso:*

Correr el siguiente comando:

    npm install mysql

Una vez finalizado se podra usar el modulo para conectarse a la base de datos.

### *Tercer paso:*

Correr el siguiente comando:

    npm install express

### *Cuarto paso:*

Correr el siguiente comando:

    npm install ejs

### *Quinto paso:*

    npm install open

### *Sexto paso:*

    node node.js

Una vez se corra el sexto paso, se abrira el navegador con el link: *http://localhost:8080* (Si el puerto 8080 esta ocupado se tiene que cambiar en el archivo *node.js*)