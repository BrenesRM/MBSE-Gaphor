# ISO_15288_Lifecycle_Processes.md
🔄 ISO/IEC/IEEE 15288 – System Lifecycle Processes

Aplicada a VMware Aria Automation

¿Qué es ISO 15288?

ISO/IEC/IEEE 15288 es el estándar que define cómo gestionar el ciclo de vida completo de un sistema, desde la idea inicial hasta su retirada.

No describe arquitectura ni tecnología concreta.
Describe qué procesos deben existir para que un sistema:

Se construya correctamente

Se opere de forma segura

Evolucione sin romperse

📌 En pocas palabras:

ISO 15288 responde a “cómo nace, vive, cambia y muere un sistema”.

¿Por qué ISO 15288 es útil para SysAdmins e IaaC Engineers?

En plataformas como VMware Aria Automation, los problemas típicos son:

Automatizaciones sin dueño

Cambios sin control

Falta de documentación viva

Plataformas que nadie se atreve a tocar

ISO 15288 ayuda a:

Ordenar el trabajo técnico

Alinear operaciones, arquitectura y código

Definir responsabilidades claras

Hacer cambios sin miedo

Soportar auditorías y continuidad operativa

Estructura de ISO 15288 (simplificada)

ISO 15288 define procesos, no fases rígidas.
Para uso práctico los agrupamos así:

Grupo	Propósito
Concepto	Entender la necesidad
Desarrollo	Diseñar y construir
Producción	Desplegar y operar
Soporte	Mantener y evolucionar
Retirada	Desmantelar correctamente
1️⃣ Concept Stage – Concepto del Sistema
¿Qué se hace aquí?

Identificar necesidades

Analizar viabilidad

Definir alcance

Ejemplo VMware Aria

Necesidad: “Reducir el tiempo de provisión de VMs”

Restricciones: seguridad, red, compliance

Alcance: automatización de VM + red + LB

📌 Conexión con Arcadia

Aquí se alimenta la Operational Analysis (OA).

2️⃣ Development Stage – Desarrollo
¿Qué se hace aquí?

Diseñar arquitectura

Definir requisitos

Implementar solución

Ejemplo VMware Aria

Diseñar SA / LA / PA

Crear workflows vRO

Definir blueprints Aria

Crear módulos IaaC

📌 Importante

El diseño debe existir antes del código.

3️⃣ Production Stage – Producción
¿Qué se hace aquí?

Desplegar en producción

Integrar con sistemas reales

Validar funcionamiento

Ejemplo

Publicar catálogos en Aria

Conectar vCenter, IPAM y F5

Validar despliegues en DC A y B

📌 Regla

Producción no es el final, es el inicio de la operación.

4️⃣ Utilization & Support – Operación y Soporte
¿Qué se hace aquí?

Operar el sistema

Gestionar incidencias

Monitorizar y ajustar

Ejemplo

Operar workflows

Analizar fallos de automatización

Gestionar cambios menores

📌 Clave

Lo que no se opera bien, se rompe.

5️⃣ Evolution – Evolución del Sistema
¿Qué se hace aquí?

Introducir mejoras

Añadir nuevas capacidades

Adaptarse a cambios del entorno

Ejemplo

Añadir Datacenter C

Integrar nuevo IPAM

Incorporar cloud público

📌 Muy importante

Evolución ≠ parcheo improvisado.

6️⃣ Retirement – Retirada
¿Qué se hace aquí?

Desmantelar componentes

Migrar servicios

Cerrar dependencias

Ejemplo

Retirar workflows obsoletos

Eliminar integraciones antiguas

Archivar documentación

📌 Error común

Nadie planifica la retirada… y luego nadie sabe qué borrar.

ISO 15288 + Arcadia + Aria Automation
ISO 15288	Arcadia	VMware Aria
Concept	OA	Identificación de necesidades
Development	SA / LA / PA	Diseño y automatización
Production	PA	Deploy real
Support	PA	Operación
Evolution	OA → PA	Cambios controlados
Retirement	PA	Limpieza técnica
¿Cómo usar ISO 15288 en el día a día?
Para SysAdmins

Definir ownership claro

Establecer procesos de cambio

Reducir riesgos operativos

Para IaaC Engineers

Versionar infraestructura

Gestionar lifecycle del código

Diseñar módulos evolutivos

Ejemplo completo de cambio (muy real)
Cambio solicitado

“Añadir soporte para Datacenter B”

Con ISO 15288

Concept: nueva necesidad

OA: impacto operativo

SA/LA: funciones y lógica

PA: vCenter-B, F5-B

Production: despliegue

Support: operación

Evolution: mejora futura

📌 Sin improvisación.

Errores comunes sin ISO 15288

❌ Cambios directos en producción
❌ Automatización sin mantenimiento
❌ Nadie sabe qué depende de qué

✅ Resumen para wiki

ISO 15288 proporciona un marco para gestionar el ciclo de vida completo de plataformas de automatización como VMware Aria Automation, permitiendo a SysAdmins e IaaC Engineers diseñar, desplegar, operar, evolucionar y retirar sistemas de forma controlada, trazable y sostenible.
