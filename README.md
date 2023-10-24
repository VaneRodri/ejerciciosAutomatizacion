# README

Arquetipo de pruebas automatizadas de APIs usando la herramienta karate

Realizadas por:  EquipoE2E

## Complementos

|**Intellij**|**Java**|**Gradle**|
| :----: | :----: | :----:  |
|[<img width="50" height="50" src="https://cdn.iconscout.com/icon/free/png-128/intellij-idea-569199.png">](https://www.jetbrains.com/es-es/idea/download/#section=windows)|[<img height="60" src="https://www.oracle.com/a/ocom/img/cb71-java-logo.png">](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)|[<img height="50" src="https://gradle.org/images/gradle-knowledge-graph-logo.png?20170228">](https://gradle.org/releases/)|
> **NOTA**:
> * Una vez obtenido Intellij es necesario instalar los plugins de Gherkin y Cucumber. (*[Guia de instalación plugins en intellij](https://www.jetbrains.com/help/idea/managing-plugins.html)*)
>

## Ejecución local

Clonar el proyecto

```bash
  git clone https://BancoPichinchaEC@dev.azure.com/BancoPichinchaEC/BP-Quality-Management/_git/sqa-aut-arq-karate
```

Entrar al directorio del proyecto

```bash
  cd sqa-aut-arq-karate
```
## Modificación del codigo

- Para realizar modificaciones al codigo del proyecto. realizar los siguientes pasos: 

     
	 1. Importar el proyecto desde IntelliJ IDE bajo la estructura de un proyecto Gradle existente
	 2. Configurar JRE System Library con JavaSE-1.8
	 3. Configurar la codificación a UTF-8 al proyecto una vez sea importado

## Comandos

Para ejecutar todos los features por linea de comandos
```bash
  ./gradlew clean test 
```

Para ejecutar todos los escenarios que contengan un tag especifico
```bash
  ./gradlew clean test "-Dkarate.options=--tags @test"
```

Para ejecutar los escenarios enviando variables de ambiente
```bash
  ./gradlew clean test "-Dkarate.options=--tags @test" -Dvariable=test
```
> **NOTA**:
> * Para ejecutar el proyecto se necesita Java JDK 1.8 y Gradle con la versión 4.10.2 o superior.
> * Otra alternativa para no instalar gradle es usar el comando gradlew al momento de ejecutar el proyecto como se muestro anteriormente.
> * Luego de la ejecucion de pruebas, los reportes se generan en la carpeta **build/karate-reports/**, y el archivo de resumen es el **karate-summary.html**

## Construido con:
La automatización fue desarrollada con:

* BDD - Estrategia de desarrollo
* Gradle - Manejador de dependencias
* Cucumber - Framework para automatizar pruebas BDD
* Gherkin - Lenguaje Business Readable DSL (Lenguaje especifico de dominio legible por el negocio)

## Documentacion

[Manual Karate](https://pichincha.atlassian.net/wiki/spaces/CS/pages/2440757739/Manual+Arquetipo+Karate+Cucumber)

