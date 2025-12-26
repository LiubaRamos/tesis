# Modelado y Simulación de Tsunamis (COMCOT)

Este repositorio contiene las herramientas núcleo para la simulación de la generación, propagación e inundación de tsunamis, aplicado específicamente al estudio de la costa peruana.

## 📖 Sobre el Modelo COMCOT
El modelo **COMCOT** (Cornell Multi-grid Ocean Tsunami Model) es un sistema de simulación numérica desarrollado originalmente en la Universidad de Cornell. Es ampliamente reconocido en la comunidad científica por su capacidad de utilizar mallas anidadas (nested grids) de diferentes resoluciones, permitiendo modelar desde el desplazamiento inicial de la falla sísmica en mar abierto hasta el detalle de la inundación en zonas costeras.

## 📂 Contenido del Repositorio
El repositorio incluye el motor de cálculo y scripts de procesamiento base:
* **`comcot.exe`**: Ejecutable principal del modelo numérico.
* **`comcot.ctl`**: Archivo de control donde se definen parámetros sísmicos, grillas y tiempos de simulación.
* **`comcot2asc.m`**: Script de MATLAB para convertir los resultados binarios del modelo a formato ASCII.
* **`grd2xyz.m`**: Utilidad de MATLAB para la conversión de formatos de mallas batimétricas.

## 🛠️ Mi Contribución y Flujo de Trabajo
Mi labor en este proyecto se centra en la **implementación y automatización del flujo de trabajo** para escenarios locales:
1.  **Configuración de Escenarios**: Definición de parámetros de falla y diseño de grillas para el litoral peruano.
2.  **Pre-procesamiento**: Preparación de datos de entrada (actualmente mediante scripts de MATLAB).
3.  **Post-procesamiento**: Desarrollo de herramientas en Python para la visualización de resultados, mapas de inundación y análisis de series temporales (en fase de desarrollo).

## 📝 Nota de Autoría y Agradecimientos
Los códigos base del motor de simulación y las herramientas de conversión proporcionados en este repositorio me fueron facilitados por el Dr. Cesar Jimenez Tintaya. Este repositorio sirve como repositorio técnico para el desarrollo de mi tesis de licenciatura, donde utilizo estas herramientas para el análisis de riesgo sísmico y de inundación de tsunamis.

## 👤 Contacto
**Liuba Ramos** Ciencias Físicas - UNMSM  
[GitHub Profile](https://github.com/LiubaRamos) | [LinkedIn](https://www.linkedin.com/in/liuba-llantirhuay/)
