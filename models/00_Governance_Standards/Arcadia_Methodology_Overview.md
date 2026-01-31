# Arcadia_Methodology_Overview.md

🧠 Metodología Arcadia (MBSE) aplicada a VMware Aria Automation
¿Qué es Arcadia?

Arcadia es una metodología de Model-Based Systems Engineering (MBSE) utilizada por Capella, cuyo objetivo es diseñar sistemas complejos de forma estructurada, trazable y reutilizable.

Arcadia divide el diseño en 4 niveles, cada uno respondiendo a una pregunta distinta:

Nivel	Pregunta clave
OA – Operational Analysis	¿Qué necesita la operación?
SA – System Analysis	¿Qué debe hacer el sistema?
LA – Logical Architecture	¿Cómo se organiza la solución?
PA – Physical Architecture	¿Con qué tecnología se implementa?

📌 Idea clave para SysAdmins

Arcadia evita empezar directamente escribiendo workflows, pipelines o Terraform sin entender el problema completo.

¿Por qué Arcadia es útil para un SysAdmin / IaaC Engineer?

En entornos como VMware Aria Automation, los sistemas suelen:

Crecer de forma desordenada

Mezclar lógica de negocio con implementación

Ser difíciles de mantener o escalar

Arcadia ayuda a:

Diseñar automatización coherente

Reducir deuda técnica

Entender impacto de cambios

Reutilizar workflows, módulos y blueprints

Explicar la arquitectura a otros equipos

1️⃣ Operational Analysis (OA)
¿Qué es OA?

OA describe cómo funciona la operación, sin hablar de sistemas ni herramientas.

En palabras simples:

“¿Qué hace la gente hoy y qué debería poder hacer?”

OA en contexto VMware Aria
Ejemplo real

Un equipo de aplicaciones necesita:

Solicitar una VM

Elegir entorno (Prod / Dev)

Obtener red y balanceador

En OA se modela:

Quién: Application Team, Platform Ops, Network Ops

Qué: Solicitar servicio, entregar infraestructura

Cómo interactúan: Solicitud → Validación → Entrega

📌 NO se modela:

vCenter

Aria

vRO

Workflows

¿Cómo usar OA como SysAdmin?

Alinear expectativas con negocio

Detectar dependencias ocultas

Definir SLAs reales

Evitar automatizar procesos rotos

2️⃣ System Analysis (SA)
¿Qué es SA?

SA define el sistema como una caja negra.

Pregunta clave:

“¿Qué debe hacer el sistema, independientemente de cómo se implemente?”

SA en contexto VMware Aria
El sistema

Plataforma de Automatización de Infraestructura

Funciones del sistema

Procesar solicitudes

Aplicar políticas

Aprovisionar recursos

Integrarse con sistemas externos

Sistemas externos

IPAM

vCenter

F5

DNS

📌 Importante

Aquí aún no decides si usas vRO, Terraform o Ansible.

¿Cómo usar SA como IaaC Engineer?

Definir contratos claros (inputs/outputs)

Diseñar APIs internas

Separar responsabilidad de funciones

Facilitar testing y validación

3️⃣ Logical Architecture (LA)
¿Qué es LA?

LA describe cómo se organiza la solución, sin atarla a herramientas específicas.

Pregunta clave:

“¿Qué bloques lógicos necesito y cómo colaboran?”

LA en contexto VMware Aria
Componentes lógicos típicos

Request Manager

Policy Engine

Compute Provisioning

Network Allocation

Security Controls

Flujo lógico
Solicitud → Política → Compute → Red → LB


📌 Regla clave

Si mañana cambias VMware Aria, el LA debería seguir teniendo sentido.

¿Cómo usar LA como SysAdmin?

Diseñar workflows modulares

Separar lógica de negocio y técnica

Crear librerías reutilizables

Preparar multi-cloud o DR

4️⃣ Physical Architecture (PA)
¿Qué es PA?

PA traduce lo lógico a componentes reales.

Pregunta clave:

“¿Con qué tecnología concreta lo implemento?”

PA en contexto VMware Aria
Componentes físicos

VMware Aria Automation (UI + Service Broker)

vRealize Orchestrator (Workflows y Actions)

vCenter A / B

F5 A / B

IPAM

Ejemplo

Request Manager → Aria UI

Policy Engine → vRO Actions

Compute Provisioning → vRO + vCenter

Network Allocation → vRO + IPAM

¿Cómo usar PA como IaaC Engineer?

Implementar sin improvisar

Documentar dependencias reales

Analizar impacto de cambios

Facilitar auditorías

🔗 Trazabilidad (el verdadero poder)

Arcadia permite trazar:

Necesidad Operativa
 → Función del Sistema
   → Componente Lógico
     → Workflow / Código

Ejemplo

Necesidad: “Entrega rápida de VM”

Función: “Provisionar compute”

Lógico: “Compute Provisioning”

Físico: vRO workflow / Terraform module

📌 Resultado
Sabes exactamente:

Qué rompe un cambio

Qué puedes reutilizar

Qué eliminar con seguridad

🛠 Arcadia vs “hacer scripts”
Sin Arcadia	Con Arcadia
Workflows acoplados	Workflows modulares
Difícil de explicar	Arquitectura clara
Cambios peligrosos	Cambios controlados
Deuda técnica	Evolución planificada
✅ Conclusión (para wiki)

Arcadia permite a SysAdmins e IaaC Engineers diseñar plataformas de automatización de forma estructurada, trazable y reutilizable, evitando improvisación y deuda técnica, y alineando negocio, operación y tecnología en VMware Aria Automation.
