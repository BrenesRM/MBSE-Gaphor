🧭 Procedimiento: Uso del Prompt MBSE para crear un modelo Capella (Arcadia)

## 1. Objetivo del procedimiento
Definir cómo utilizar el prompt MBSE para:
*   Crear un proyecto MBSE estructurado.
*   Modelar correctamente en Capella.
*   Alinear VMware Aria / vRO / Service Broker con Arcadia.
*   Garantizar trazabilidad, reutilización y cumplimiento de estándares.

## 2. Prerrequisitos
Antes de empezar, asegúrate de tener:

**Herramientas:**
*   Capella (versión estable recomendada).
*   El prompt MBSE maestro aprobado por el equipo.
*   Editor de texto o gestor documental.

**Información mínima del proyecto:**
*   Nombre del proyecto.
*   Datacenters involucrados (ej. A y B).
*   Sistemas externos (IPAM, vCenter, F5, etc.).
*   Stakeholders conocidos.

## 3. Paso 1 – Crear la estructura base con el prompt
**Acción:**
1. Copia el prompt MBSE maestro.
2. Ajusta si es necesario:
    *   Nombre del proyecto.
    *   Número de datacenters.
    *   Tecnologías adicionales.
3. Ejecuta el prompt (ChatGPT u otra herramienta interna).

**Resultado esperado:**
*   Estructura de carpetas MBSE.
*   Documentación inicial.
*   Plantillas por fase Arcadia.

> [!IMPORTANT]
> **Regla:** No abras Capella todavía. Primero entiende el problema.

## 4. Paso 2 – Crear el proyecto en Capella
**Acción:**
1. Abrir Capella.
2. `File` → `New` → `Capella Project`.
3. Nombre del proyecto = nombre definido en el prompt.
4. Activar las 4 capas Arcadia:
    *   Operational Analysis
    *   System Analysis
    *   Logical Architecture
    *   Physical Architecture

**Resultado esperado:**
*   Proyecto vacío pero correctamente estructurado.

> [!IMPORTANT]
> **Regla:** Un proyecto Capella = un sistema principal.

## 5. Paso 3 – Operational Analysis (OA)
**Objetivo:** Modelar el problema operacional, no la solución técnica.

**Qué crear en Capella:**
*   **Operational Entities:** App Team, Platform Ops, Network Team.
*   **Operational Capabilities:** Solicitar servicio, Aprovisionar infraestructura.
*   **Operational Scenarios:** Solicitud de VM con red y LB.

**Cómo usar el prompt aquí:**
Usa el contenido generado para nombrar actores, definir escenarios y validar que todos los stakeholders estén representados.

> [!IMPORTANT]
> **Reglas clave:**
> *   ❌ No vCenter, no workflows, no herramientas.
> *   ✅ Solo necesidades y flujos operativos.

## 6. Paso 4 – System Analysis (SA)
**Objetivo:** Definir el sistema como caja negra.

**Qué crear en Capella:**
*   **System:** "Plataforma de Automatización".
*   **System Functions:** Provisionar Compute, Asignar IP, Configurar Load Balancer.
*   **External Systems:** IPAM, vCenter, F5.

**Cómo usar el prompt aquí:**
Copia las funciones propuestas, ajusta interfaces según tu entorno y usa los escenarios como validación.

> [!IMPORTANT]
> **Reglas clave:**
> *   El sistema hace cosas, no "vRO hace cosas".
> *   Interfaces claras y explícitas.

## 7. Paso 5 – Logical Architecture (LA)
**Objetivo:** Diseñar cómo se organiza la solución, sin atarla a tecnología específica.

**Qué crear en Capella:**
*   **Logical Components:** Request Manager, Policy Engine, Network Allocation.
*   **Logical Functions:** Evaluar políticas, Orquestar recursos.
*   **Logical Exchanges:** Datos de red, Parámetros de solicitud.

**Cómo usar el prompt aquí:**
Usa los componentes lógicos propuestos, ajusta flujos según complejidad real y valida separación de responsabilidades.

> [!TIP]
> **Regla de oro:** Si mañana cambias vRO por otra herramienta, el LA debería sobrevivir.

## 8. Paso 6 – Physical Architecture (PA)
**Objetivo:** Atar el modelo a la realidad técnica.

**Qué crear en Capella:**
*   **Physical Components:** vRO, Aria Automation, vCenter A / B, F5 A / B.
*   **Physical Links:** APIs e integraciones reales.
*   **Deployment por DC:** Ejemplo: DC A (vCenter-A, F5-A) y DC B (vCenter-B, F5-B).

> [!IMPORTANT]
> **Regla:** Todo lo físico debe tener una razón lógica previa.

## 9. Paso 7 – Trazabilidad
**Objetivo:** Garantizar impacto controlado y auditoría.

**Qué trazar en Capella:**
*   Operational Need → System Function
*   System Function → Logical Component
*   Logical Component → Physical Component

**Buenas prácticas:**
*   Usa Traceability Views.
*   No dejes elementos huérfanos.
*   Todo lo físico debe justificar su existencia.

## 10. Paso 8 – Validación y reutilización
**Validación:**
*   ¿Cada stakeholder ve su necesidad reflejada?
*   ¿Se puede explicar el sistema sin mencionar herramientas?
*   ¿El cambio de un DC impacta solo en PA?

**Reutilización:**
1. Duplica el proyecto.
2. Cambia solo: OA (contexto) y PA (infraestructura).
3. Mantén SA y LA estables cuando sea posible.

## 11. Resultado final esperado
Al terminar tendrás un modelo Capella completo, arquitectura trazable, base reutilizable y un puente claro entre negocio y automatización.

> [!IMPORTANT]
> **Regla final:** Capella no es para dibujar infra. Es para entender, justificar y gobernar la infra.
