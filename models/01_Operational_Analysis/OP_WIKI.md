Operational Analysis (OA)

¿Qué es la Operational Analysis?



La Operational Analysis (OA) es la primera fase de la metodología Arcadia.

Su objetivo es entender el problema operacional, antes de pensar en sistemas o soluciones técnicas.



En OA se responde a:



¿Quiénes intervienen?



¿Qué necesitan hacer?



¿Qué actividades ocurren hoy o deberían ocurrir?



¿Cómo interactúan los actores entre sí?



📌 Regla de oro



En OA NO se modelan sistemas, herramientas ni tecnologías.



¿Para qué sirve la Operational Analysis?



La OA sirve para:



Capturar necesidades reales del negocio



Evitar diseñar soluciones incorrectas



Alinear a todos los stakeholders



Crear una base sólida para SA, LA y PA



Garantizar trazabilidad desde la operación hasta la implementación



1\. Define Operational Entities \& Capabilities

🧩 Operational Entities (OE)

¿Qué son?



Las Operational Entities representan personas, organizaciones o roles operativos que participan en la operación.



No son sistemas.



Ejemplos



Application Team



Platform Operations



Network Operations



Security Team



🧩 Operational Capabilities (OC)

¿Qué son?



Las Operational Capabilities describen qué capacidades necesita la operación, independientemente de cómo se implementen.



Son respuestas al “qué se necesita poder hacer”.



Ejemplos



Request Infrastructure Service



Operate Automated Platform



Ensure Network Connectivity



📐 OEBD – Operational Entity Breakdown Diagram

¿Qué es?



Diagrama que muestra:



Las entidades operativas



Sus relaciones jerárquicas u organizativas



¿Para qué sirve?



Alinear stakeholders



Clarificar responsabilidades



Ejemplo

Platform Operations

&nbsp;├─ Automation Team

&nbsp;└─ Network Team



📐 OCB – Operational Capability Breakdown

¿Qué es?



Descomposición jerárquica de capacidades operativas.



Ejemplo

Provide Infrastructure Service

&nbsp;├─ Request Service

&nbsp;├─ Approve Request

&nbsp;├─ Deliver Infrastructure



2\. Define Operational Activities \& Interactions

🧩 Operational Activities

¿Qué son?



Las Operational Activities describen acciones concretas que se realizan en la operación.



Son más detalladas que las capacidades.



Ejemplos



Submit Service Request



Validate Request



Assign Network Resources



📐 OABD – Operational Activity Breakdown Diagram

¿Qué es?



Descompone actividades operativas en subactividades.



Ejemplo

Deliver Infrastructure

&nbsp;├─ Allocate Compute

&nbsp;├─ Allocate Network

&nbsp;└─ Configure Load Balancer



📐 OAIB – Operational Activity Interaction Diagram

¿Qué es?



Muestra cómo interactúan las actividades entre sí (flujo lógico).



Ejemplo

Submit Request → Validate Request → Deliver Infrastructure



📐 OAS – Operational Activity Scenario

¿Qué es?



Un escenario narrativo que describe una secuencia real de actividades.



Ejemplo



El Application Team solicita una VM.

Platform Operations valida la solicitud.

Network Operations asegura conectividad.



3\. Allocate Operational Activities to Actors / Entities / Roles

🎯 Objetivo



Responder a:



¿Quién hace qué?



📐 OAB – Operational Activity to Entity Allocation

¿Qué es?



Muestra qué entidad realiza cada actividad.



Ejemplo

Actividad	Entidad

Submit Request	Application Team

Validate Request	Platform Operations

Allocate Network	Network Operations

📐 ORB – Operational Role Breakdown

¿Qué es?



Define roles operativos, independientes de personas u organizaciones.



Ejemplos



Service Requester



Infrastructure Operator



Network Operator



📐 OES – Operational Entity Scenario

¿Qué es?



Escenario centrado en quién interactúa con quién.



Ejemplo

Application Team → Platform Operations → Network Operations



4\. Transverse Modeling

🧩 CDB – Contextual Data Breakdown

¿Qué es?



Define los datos operativos importantes que circulan en la operación.



Ejemplos



Service Request Data



Network Parameters



Deployment Constraints



¿Para qué sirve?



Evitar datos implícitos



Preparar futuras interfaces



🧩 MSM – Modes \& States Model

¿Qué es?



Describe los estados y modos operativos del contexto.



Ejemplos de estados



Request Submitted



Request Approved



Infrastructure Delivered



Failed



🧩 M\&S – Modes and States Scenarios

¿Qué es?



Escenarios que muestran transiciones entre estados.



Ejemplo

Submitted → Approved → Delivered

Submitted → Rejected



📐 State \& Mode / Functions Matrix

¿Qué es?



Una matriz que muestra:



Qué actividades o funciones están activas en cada estado o modo



Ejemplo

Estado / Actividad	Submit	Validate	Deliver

Submitted	✔	❌	❌

Approved	❌	✔	❌

Delivered	❌	❌	✔

¿Para qué sirve?



Detectar incoherencias



Preparar automatización futura



Facilitar validación con negocio



✅ Resumen rápido (para el wiki)



Operational Analysis permite entender el problema operativo real,

identificando actores, capacidades, actividades, interacciones y estados,

sin introducir soluciones técnicas.

Es la base para construir una arquitectura correcta, trazable y reutilizable.

