# Practical DDD: Design Level Event Storming

source: https://medium.com/@armyost1/practical-ddd-breaking-free-from-theory-2-design-level-event-storming-a4b494e61f9f
tags: #ddd #eventstorming #design-level #bounded-context #microservices
date: 2026-02-15
category: 04-Resources/languages

## 🎨 Theme Configuration

```yaml
theme: base
themeVariables:
  primaryColor: "#faf5ff"
  primaryTextColor: "#581c87"
  primaryBorderColor: "#9333ea"
  lineColor: "#71717a"
  secondaryColor: "#fff7ed"
  tertiaryColor: "#f3e8ff"
  background: "#ffffff"
  fontSize: "14px"
```

---

## 📊 Diagrams

### 1️⃣ Big Picture → Design Level Flow

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#faf5ff',
    'primaryTextColor': '#581c87',
    'primaryBorderColor': '#9333ea',
    'lineColor': '#71717a',
    'secondaryColor': '#fef3c7',
    'tertiaryColor': '#f3e8ff',
    'background': '#ffffff'
  }
}}%%
graph TD
    BP[Big Picture Event Storming<br/>Focus: Current Business Flow]
    DL[Design Level Event Storming<br/>Focus: Model Software System]
    AGG[Define Aggregates<br/>Group related Domain Events]
    BC[Define Bounded Contexts<br/>Set Microservice Boundaries]
    MS[Microservice Design<br/>Implementation Ready]

    BP --> DL
    DL --> AGG
    AGG --> BC
    BC --> MS

    style BP fill:#dbeafe,stroke:#3b82f6,stroke-width:2px
    style DL fill:#f3e8ff,stroke:#9333ea,stroke-width:2px
    style AGG fill:#fef3c7,stroke:#f59e0b,stroke-width:2px
    style BC fill:#dcfce7,stroke:#22c55e,stroke-width:2px
    style MS fill:#86efac,stroke:#16a34a,stroke-width:3px
```

---

### 2️⃣ Aggregate Definition Process

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#fefce8',
    'primaryTextColor': '#713f12',
    'primaryBorderColor': '#f59e0b',
    'lineColor': '#78716c',
    'secondaryColor': '#fff7ed',
    'tertiaryColor': '#fef9c3',
    'background': '#ffffff'
  }
}}%%
graph LR
    subgraph INPUT["Big Picture Results"]
        E1[Domain Events]
        E2[Domain Events]
        E3[Domain Events]
        E4[Domain Events]
    end

    subgraph PROCESS["Group by Similarity"]
        G1[Group 1<br/>Business Related]
        G2[Group 2<br/>Payment Related]
    end

    subgraph OUTPUT["Aggregates"]
        A1[Order Aggregate]
        A2[Payment Aggregate]
    end

    E1 --> G1
    E2 --> G1
    E3 --> G2
    E4 --> G2

    G1 --> A1
    G2 --> A2

    style E1 fill:#dbeafe,stroke:#3b82f6
    style E2 fill:#dbeafe,stroke:#3b82f6
    style E3 fill:#fef3c7,stroke:#f59e0b
    style E4 fill:#fef3c7,stroke:#f59e0b
    style G1 fill:#dcfce7,stroke:#22c55e
    style G2 fill:#dcfce7,stroke:#22c55e
    style A1 fill:#f3e8ff,stroke:#9333ea,stroke-width:3px
    style A2 fill:#f3e8ff,stroke:#9333ea,stroke-width:3px
```

---

### 3️⃣ Microservice Architecture

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#f0f9ff',
    'primaryTextColor': '#0c4a6e',
    'primaryBorderColor': '#0ea5e9',
    'lineColor': '#64748b',
    'secondaryColor': '#fef3c7',
    'tertiaryColor': '#e0f2fe',
    'background': '#ffffff'
  }
}}%%
graph TD
    subgraph MS1["Microservice 1: Order Service"]
        OA[Order Aggregate]
        OA_CA[Customer Aggregate]
    end

    subgraph MS2["Microservice 2: Payment Service"]
        PA[Payment Aggregate]
    end

    subgraph MS3["Microservice 3: Delivery Service"]
        DA[Delivery Aggregate]
        DA_TA[Tracking Aggregate]
    end

    style MS1 fill:#dbeafe,stroke:#3b82f6,stroke-width:2px
    style MS2 fill:#fef3c7,stroke:#f59e0b,stroke-width:2px
    style MS3 fill:#dcfce7,stroke:#22c55e,stroke-width:2px
    style OA fill:#ffffff,stroke:#3b82f6,stroke-width:2px
    style PA fill:#ffffff,stroke:#f59e0b,stroke-width:2px
    style DA fill:#ffffff,stroke:#22c55e,stroke-width:2px
```

---

### 4️⃣ Design Level Process (PlantUML)

```plantuml
@startuml DesignLevelEventStorming
!theme plain
skinparam backgroundColor #FFFFFF

title "Design Level Event Storming - Process"

start

:Big Picture Event Storming;
note right
  Focus: Current Business Flow
  Output: Domain Events
end note

:Design Level Event Storming;
note right
  Focus: Model Software System
  Goal: Implementation Design
end note

:Define Aggregates;
note right
  Group related Domain Events
  Based on business similarity
  Share same lifecycle
end note

:Set Boundaries;
note right
  Define Bounded Contexts
  Determine Microservice Scope
  One MS = Multiple Aggregates
end note

:Implementation Ready;
stop

@enduml
```

---

## สรุป (Summary)

บทความนี้เป็น **Part 2** ของ series Practical DDD ซึ่ง focus ที่ **Design Level Event Storming** - ขั้นตอนต่อจาก Big Picture Event Storming ที่มุ่ง modeling software system เพื่อการ implement

**ความแตกต่างหลัก:**
- **Big Picture** → Focus ที่ business flow ปัจจุบัน
- **Design Level** → Focus ที่ model software system เอง

---

## แนวคิดหลัก (Core Concepts)

### สิ่งที่ Design Level ทำ
- Model software system สำหรับ implementation
- อาจทำให้ definition เดิมเปลี่ยนไป
- ตัดสินใจเรื่อง microservice boundaries

### ตัวอย่างการเปลี่ยนแปลง
1. **Decouple Systems** - แยก Payment System ออกจาก Delivery System monolith
2. **Absorb Manual Tasks** - งานที่ทำ manual เข้ามาใน system

---

## Aggregates - จุดเปลี่ยนคริติคัล

### Definition
**Aggregate** = การรวมกลุ่ม Domain Events ที่มี **similarities** หรือ **strong relationship**

### ทำไมต้อง Aggregate?
จากผลลัพธ์ Big Picture Event Storming:
- Domain Events บางอันตอนแรกคิดว่าอยู่คนละ system
- แต่ด้วย **business similarity** → ควรอยู่ **ใน Aggregate เดียวกัน**

### Aggregate ใน Code
- จะกลายเป็น **Objects** ที่ share **same Lifecycle**
- Implement ผ่าน **OOP (Object-Oriented Programming)** concepts
- เป็น **core objects** ภายใน microservice

---

## Bounded Contexts & Microservices

### ขั้นตอน
1. **Define Aggregates** ก่อน (จาก Big Picture results)
2. **Define Bounded Contexts** (อิงจาก Aggregates)
3. **Determine Microservice Scope**

### General Rule
```
1 Microservice = Multiple Aggregates (as core objects)
```

### Importance
- **Bounded Contexts** ใช้ define organizational structures
- ใช้ determine **appropriate size of Microservices**
- Carve ออกเป็น Bounded Contexts ได้ **precise** ไม่ง่าย

### เพื่อความ precise
ต้อง **enhance visibility of Event Storming output** → นั่นคือเหตุผลที่ต้อง define **Aggregate ก่อน Bounded Context**

---

## Key Takeaways

**Aggregates เป็น Turning Point:**

**Macro Level (Design):**
- Improve visibility เมื่อ define Bounded Contexts
- ช่วย determine microservice boundaries

**Micro Level (Code):**
- เป็น **most critical object** ภายใน code
- Share same lifecycle
- Core objects ของ microservice

**Process Flow:**
```
Big Picture Events
    ↓
Group by Similarity
    ↓
Define Aggregates
    ↓
Define Bounded Contexts
    ↓
Determine Microservice Scope
```

---

## Related Topics

- #ddd #domain-driven-design
- #eventstorming #design-level
- #bounded-context #microservices
- #aggregates #oop
- #software-architecture

## Notes

Design Level Event Storming เป็น **bridge** ระหว่าง business understanding (Big Picture) กับ implementation design (Tactical Design) - Aggregates เป็น key concept ที่เชื่อมทั้งสองโลกนี้เข้าด้วยกัน
