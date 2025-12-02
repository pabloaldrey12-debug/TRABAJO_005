Montar un entorno de desarrollo con **Docker Compose** editado de Visual Studio Code.
- Un contenedor con **Apache + PHP 8.2**. 
- Un contenedor con **PostgreSQL 16**. 
- Un formulario en **PHP** que envíe datos y los guarde en una tabla de PostgreSQL usando **PDO**.


CREACIÓN DE PROYECTO.
DOCKER-COMPOSE.YML
APP /
    index.php
    api.php
    confi/Database.php
confi/apachi.conf
init-db/init.sql

// Modificaciones en el yml con nueva bd y usuario y passw.
// BD  = fomulario_db
// User = admin
// Password = 123456789

//_Modificaciones y revisión en Database.php

// Modificacione en fichreo index, exportando a un csss los estilos del documento y creando tambien una carpeta para guardarlos y enlazarlos.

// Revisamos api.php

// En TRABAJO_005 creamos carpeta config

// Revisamos config/apache.conf
// Comprobación fichero init.sql con las tablas a crear en la bd
