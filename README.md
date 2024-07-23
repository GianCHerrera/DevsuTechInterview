# Instalación y Ejecución del Framework de Karate

Este proyecto utiliza Maven para la gestión de dependencias y la ejecución de pruebas de Karate. A continuación, se detallan los pasos para instalar las dependencias y ejecutar las pruebas.

## Prerrequisitos

- **Java Development Kit (JDK)**: Asegúrate de tener instalado al menos JDK 8 en tu máquina.
- **Maven**: Necesitarás Maven para gestionar las dependencias y compilar el proyecto. Puedes descargar Maven desde [https://maven.apache.org/download.cgi](https://maven.apache.org/download.cgi) e instalarlo siguiendo las instrucciones correspondientes.

## Clonar el Repositorio

Primero, clona el repositorio de tu proyecto desde Git:

```bash
git clone https://github.com/GianCHerrera/DevsuTechInterview.git
cd Api
```

## Instalar Dependencias

1. Abre una terminal o línea de comandos y navega hasta el directorio de tu proyecto clonado.

2. Ejecuta el siguiente comando para instalar las dependencias definidas en `pom.xml`:

```bash
mvn clean install
```
Este comando descargará todas las dependencias necesarias desde los repositorios configurados y compilará el proyecto.

## Ejecutar Pruebas de Karate
Una vez que las dependencias se hayan instalado correctamente, puedes ejecutar las pruebas de Karate con el siguiente comando:

```bash
mvn test
```


# Instalación y Ejecución del Framework de Cypress

¡Bienvenido al repositorio de Cypress Tech Interview!

Este proyecto utiliza Cypress para realizar pruebas automatizadas de frontend. Cypress es una herramienta moderna y poderosa que permite escribir y ejecutar pruebas de extremo a extremo de forma sencilla y efectiva.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- **Node.js**: Descárgalo e instálalo desde [https://nodejs.org/](https://nodejs.org/). Node.js incluirá npm (Node Package Manager) que utilizaremos para instalar Cypress y otras dependencias.

## Instalación

Sigue estos pasos para configurar el entorno de desarrollo y ejecutar las pruebas con Cypress:

1. **Clona el Repositorio**:

   ```bash
   git clone https://github.com/GianCHerrera/DevsuTechInterview.git
   cd E2E
    ```

2. **Instala las Dependencias**:
Asegúrate de tener Node.js y npm (Node Package Manager) instalados. Luego, ejecuta el siguiente comando para instalar todas las dependencias necesarias, incluyendo Cypress:
```bash
   npm install
```
Este comando descargará e instalará todas las dependencias listadas en el archivo `package.json`, incluyendo Cypress y cualquier otra herramienta necesaria para ejecutar las pruebas.

## Ejecutar Pruebas

### Ejecutar pruebas sin interfaz gráfica
Si prefieres ejecutar las pruebas en segundo plano (headless mode) para integrarlo en un proceso de integración continua (CI) o para ejecuciones automatizadas:
```bash
   npx cypress run
```

#### Ejecutar pruebas con interfaz de usuario
Puedes abrir la interfaz de usuario de Cypress para ejecutar y administrar pruebas de manera interactiva:

```bash
   npx cypress open
```
#### 💡 Tip: Select E2E Testing > (The browser you prefer) Chrome or Electron > Checkout.cy.js 

Then you should be able to see the E2E automation run


