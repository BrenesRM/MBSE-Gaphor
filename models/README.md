# Proyecto VMware MBSE Capella 🚀

Este proyecto está estructurado bajo los estándares **ISO 42010** e **ISO 15288**, siguiendo la metodología **Arcadia**. Su objetivo es servir como modelo de referencia y plantilla en **Capella** para la automatización y gobernanza de infraestructuras VMware, integrando:

*   **VMware Aria Automation / Service Broker**
*   **vRealize Orchestrator (vRO)**
*   **vCenter**
*   **IPAM, F5, Redes**
*   **Datacenters A y B**

---

## 🏗️ Metodología Arcadia

El modelo se desarrolla en cuatro capas principales para garantizar la separación de preocupaciones y la trazabilidad:

1.  **Análisis Operacional (OA):** Identifica las necesidades de los stakeholders y los procesos de negocio sin entrar en detalles tecnológicos.
2.  **Análisis de Sistema (SA):** Define qué debe hacer el sistema (caja negra) y sus interfaces externas.
3.  **Arquitectura Lógica (LA):** Diseña cómo se organiza la solución internamente, de forma independiente a la tecnología.
4.  **Arquitectura Física (PA):** Mapea los componentes lógicos a soluciones técnicas reales (vRO, vCenter, APIs, etc.).

---

## 📂 Estructura del Proyecto

El repositorio está organizado siguiendo un ciclo de vida de ingeniería de sistemas:

*   **[`00_Governance_Standards`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/00_Governance_Standards):** Normativas y estándares aplicables.
*   **[`01_Operational_Analysis`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/01_Operational_Analysis):** Documentación sobre necesidades de negocio y actores.
*   **[`02_System_Analysis`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/02_System_Analysis):** Especificaciones funcionales y límites del sistema.
*   **[`03_Logical_Architecture`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/03_Logical_Architecture):** Diseño de componentes lógicos y flujos de datos.
*   **[`04_Physical_Architecture`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/04_Physical_Architecture):** Detalle técnico de implementación y despliegue por Datacenter.
*   **[`05_Configuration_Items`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/05_Configuration_Items):** Inventario de elementos de configuración (CIs).
*   **[`06_Traceability`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/06_Traceability):** Matrices y vistas que aseguran el cumplimiento de requisitos.
*   **[`07_Capella_Model`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/07_Capella_Model):** Archivos fuente del modelo Capella (.melymod, .aird).
*   **[`08_Templates_and_Procedures`](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/08_Templates_and_Procedures):** Guías y plantillas para nuevos modelos.

---

## 📖 Guías Rápidas

*   [🧭 Procedimiento de Uso](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/Procedimiento_de_Uso.md): Paso a paso para crear un modelo desde cero usando prompts MBSE.
*   [🎨 Ejemplo de Modelado](file:///d:/TrabajoBCCR/CapelloBCCR/Etiquetas/Ejemplo.md): Guía visual y descriptiva de cómo se ven los diagramas en cada fase de Arcadia.

---

## 📌 Reglas de Oro

1.  **No saltes pasos:** Cada decisión física (`PA`) debe estar respaldada por una necesidad lógica (`LA`) o de sistema (`SA`).
2.  **Trazabilidad:** Ningún elemento debe quedar huérfano; todo debe estar conectado a un objetivo superior.
3.  **Modelo vivo:** La documentación y el modelo Capella deben estar sincronizados en todo momento.
