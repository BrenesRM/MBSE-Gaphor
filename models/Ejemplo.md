🟦 1. Operational Analysis (OA) – Diagrama de Escenario Operacional
🎯 Objetivo del OA

Entender quién hace qué y por qué, sin hablar de sistemas ni herramientas.

📐 Diagrama OA – Operational Scenario
Elementos a crear en Capella
Operational Entities

Application Team

Platform Operations

Network Operations

Operational Capabilities

Request Infrastructure Service

Provide Automated Infrastructure

Ensure Network Connectivity

Flujo del escenario (tal como lo dibujas)
Application Team
   |
   | Solicita VM con red y LB
   v
Platform Operations
   |
   | Coordina provisión
   v
Network Operations

Qué representa

El Application Team necesita infraestructura

Platform Ops es responsable del servicio

Network Ops garantiza red y conectividad

📌 Reglas OA

❌ No VMware

❌ No workflows

❌ No IPAM

✅ Solo personas, roles y necesidades

🟩 2. System Analysis (SA) – Diagrama de Contexto del Sistema
🎯 Objetivo del SA

Definir el sistema y sus interfaces, como una caja negra.

📐 Diagrama SA – System Context Diagram
Elementos a crear
System

Automation Platform System

External Actors / Systems

Application Team

IPAM System

vCenter System

Load Balancer System

Diagrama conceptual
Application Team
       |
       | Request Infrastructure
       v
+----------------------------+
| Automation Platform System |
+----------------------------+
   |        |        |
   |        |        |
 IPAM   vCenter   LoadBalancer

System Functions

Asociadas al sistema:

Process Service Request

Allocate Network Resources

Provision Compute Resources

Configure Load Balancer

📌 Reglas SA

El sistema “hace cosas”

Las herramientas aún no importan

Interfaces claras y explícitas

🟨 3. Logical Architecture (LA) – Diagrama de Componentes Lógicos
🎯 Objetivo del LA

Definir cómo se organiza la solución, independientemente de la tecnología.

📐 Diagrama LA – Logical Architecture Diagram
Logical Components

Request Manager

Policy Engine

Compute Provisioning

Network Allocation

Load Balancer Configuration

Diagrama lógico (texto)
[Request Manager]
        |
        v
[Policy Engine]
        |
        +--------------------+
        |                    |
        v                    v
[Compute Provisioning]  [Network Allocation]
        |
        v
[Load Balancer Configuration]

Logical Exchanges

Request Parameters

Policy Decisions

Network Data

Deployment Results

📌 Regla clave

Si mañana cambias VMware por otra plataforma, este diagrama debería seguir siendo válido.

🟥 4. Physical Architecture (PA) – Diagrama Físico por Datacenter
🎯 Objetivo del PA

Mapear lo lógico a lo real.

📐 Diagrama PA – Physical Architecture Diagram
Physical Components
Plataforma

VMware Aria Automation

vRealize Orchestrator

Datacenter A

vCenter-A

F5-A

Network-A

Datacenter B

vCenter-B

F5-B

Network-B

Diagrama físico (simplificado)
                +---------------------+
                | Aria Automation     |
                +---------------------+
                           |
                           v
                +---------------------+
                | vRO (Workflows)     |
                +---------------------+
                   |            |
          ---------+            +---------
          |                                  |
          v                                  v
+------------------+               +------------------+
| Datacenter A     |               | Datacenter B     |
| vCenter-A        |               | vCenter-B        |
| F5-A             |               | F5-B             |
+------------------+               +------------------+

Ejemplo de asignación lógica → física
Lógico	Físico
Request Manager	Aria Automation UI
Policy Engine	vRO Actions
Compute Provisioning	vRO Workflows + vCenter
Network Allocation	vRO + IPAM
Load Balancer Configuration	vRO + F5 API
🔗 5. Trazabilidad entre diagramas (muy importante)

Ejemplo real de traza:

Operational Need:
"Provision infrastructure automatically"

↓ traced to

System Function:
"Provision Compute Resources"

↓ traced to

Logical Component:
"Compute Provisioning"

↓ traced to

Physical Component:
"vRO Workflow + vCenter-A/B"


Esto en Capella:

Links de trace

O vistas de trazabilidad

✅ Resultado final

Con estos 4 diagramas tienes:

Un hilo narrativo completo

Una arquitectura defendible

Un modelo reutilizable

Un puente claro entre negocio y automatización