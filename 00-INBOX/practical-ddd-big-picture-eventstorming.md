# Practical DDD: Big Picture Event Storming

source: https://medium.com/@armyost1/practical-ddd-breaking-free-from-theory-1-big-picture-eventstorming-f796f614b364
tags: #ddd #eventstorming #domain-driven-design #workshop
date: 2026-02-15
category: 04-Resources/languages




```mermaid
graph TD
    Start([🎯 Big Picture Event Storming]) --> P1[Phase 1:<br/>Chaotic Exploration]

    P1 --> P1Tips[💡 Tips:<br/>• Add Domain Events + Actors + Systems<br/>  together NOT separately<br/>• Define Domain Event from START<br/>• Use Ubiquitous Language<br/>• Accept fragmented timeline]

    P1 --> P2[Phase 2:<br/>Enforcing Timeline]

    P2 --> P2Tips[🎯 Find PIVOTAL EVENTS<br/>Don't overthink it!]

    P2 --> P3[Phase 3:<br/>People & Systems]

    P3 --> P3Tips[⚠️ CRITICAL:<br/>Most BUSINESS DISCUSSION here<br/>FACILITATOR must cut long talks<br/>TIMEBOX or it drags forever]

    P3 --> P4[Phase 4:<br/>Explicit Walkthrough]

    P4 --> P4Tips[🗣️ Narrator explains flow<br/>✓ Verify ALL understand<br/>✓ Add missing events ON THE FLY]

    P4 --> P5[Phase 5:<br/>Problems & Opportunities]

    P5 --> P6[Phase 6:<br/>Pick Your Problem]

    P6 --> P6Tips[🎯 Guide for FUTURE<br/>TO-BE decisions<br/>Not for this workshop]

    style Start fill:#3b82f6,stroke:#1d4ed8,color:#fff,stroke-width:3px
    style P1 fill:#fefce8,stroke:#eab308,stroke-width:2px
    style P2 fill:#dcfce7,stroke:#22c55e,stroke-width:2px
    style P3 fill:#fee2e2,stroke:#ef4444,stroke-width:2px
    style P4 fill:#dbeafe,stroke:#3b82f6,stroke-width:2px
    style P5 fill:#f3f4f6,stroke:#6b7280,stroke-width:2px
    style P6 fill:#e0e7ff,stroke:#6366f1,stroke-width:2px
    style P1Tips fill:#fffbeb,stroke:#f59e0b,stroke-width:1px
    style P2Tips fill:#f0fdf4,stroke:#16a34a,stroke-width:1px
    style P3Tips fill:#fef2f2,stroke:#dc2626,stroke-width:1px
    style P4Tips fill:#eff6ff,stroke:#2563eb,stroke-width:1px
    style P6Tips fill:#eef2ff,stroke:#4f46e5,stroke-width:1px

    linkStyle default stroke:#64748b,stroke-width:2px
```



```mermaid
graph LR
    subgraph ROLES["👥 Roles & Responsibilities"]
        direction TB
        OutBox[📋 OUT-BOX<br/>Methodology]
        InFight[💼 IN-FIGHT<br/>Business]
    end

    OutBox --> OutBoxTasks[• Explain rules<br/>• Guide process<br/>• Keep timeboxing<br/>• DDD expert]
    InFight --> InFightTasks[• Know business<br/>• Challenge assumptions<br/>• Validate events<br/>• Domain expert]

    subgraph STICKY["📌 Sticky Notes"]
        D[🟡 Domain Events]
        A[👤 Actors]
        S[🔵 Systems]
        C[⚪ Commands<br/>Optional]
        P[🟢 Policies<br/>Optional]
    end

    style OutBox fill:#dbeafe,stroke:#0284c7,stroke-width:2px,color:#0c4a6e
    style InFight fill:#fef3c7,stroke:#d97706,stroke-width:2px,color:#78350f
    style D fill:#fef08a,stroke:#ca8a04,stroke-width:2px
    style A fill:#bbf7d0,stroke:#16a34a,stroke-width:2px
    style S fill:#bfdbfe,stroke:#2563eb,stroke-width:2px
    style C fill:#f1f5f9,stroke:#64748b,stroke-width:1px
    style P fill:#f1f5f9,stroke:#64748b,stroke-width:1px
```



```mermaid
mindmap
  root((🎯<br/>Event Storming))
    Phases[📋 Phases]
      P1[Phase 1<br/>Chaotic Exploration]
      P2[Phase 2<br/>Timeline]
      P3[Phase 3<br/>People & Systems]
      P4[Phase 4<br/>Walkthrough]
      P5[Phase 5<br/>Problems]
      P6[Phase 6<br/>Pick Problem]
    Roles[👥 Roles]
      Facilitator[DDD Expert<br/>Out-Box]
      Business[Domain Expert<br/>In-Fight]
      Supporter[Help Facilitator]
      Narrator[Explain Flow]
    Pain[⚠️ Pain Points]
      PP1[No Timeboxing]
      PP2[TO-BE Focus Lost]
      PP3[Off-Scope]
      PP4[Wrong Abstraction]
    Solutions[💡 Solutions]
      Sol1[Focus Sunny<br/>Scenarios]
      Sol2[Mix TO-BE<br/>Flows]
      Sol3[Use<br/>Parking Lot]
      Sol4[Facilitator<br/>Intervenes]
```



```mermaid
graph LR
    subgraph WORKFLOW["🔄 Event Storming Workflow"]
        A[Start] --> B[Phase 1:<br/>Chaotic]
        B --> C[Phase 2:<br/>Timeline]
        C --> D[Phase 3:<br/>People & Systems]
        D --> E[Phase 4:<br/>Walkthrough]
        E --> F[Phase 5:<br/>Problems]
        F --> G[Phase 6:<br/>Pick Problem]
        G --> H[End]
    end

    subgraph TOOLS["🛠️ Tools"]
        T1[🟡 Domain Events]
        T2[👤 Actors]
        T3[🔵 Systems]
    end

    style A fill:#86efac,stroke:#22c55e,stroke-width:2px
    style B fill:#fde047,stroke:#eab308,stroke-width:2px
    style C fill:#bef264,stroke:#84cc16,stroke-width:2px
    style D fill:#fca5a5,stroke:#ef4444,stroke-width:2px
    style E fill:#93c5fd,stroke:#3b82f6,stroke-width:2px
    style F fill:#d1d5db,stroke:#6b7280,stroke-width:2px
    style G fill:#c4b5fd,stroke:#8b5cf6,stroke-width:2px
    style H fill:#f9a8d4,stroke:#ec4899,stroke-width:2px
```




## สรุป (Summary)

บทความนี้แชร์ประสบการณ์จริงเกี่ยวกับ **Domain-Driven Design (DDD)** และ **Big Picture Event Storming** โดยเน้นที่การใช้งานจริงมากกว่าทำตาม theory อย่างเคร่งครัด

ประเด็นสำคัญ: DDD หลายๆ ที่ทำกันมัก focus แค่ solution space และใช้ Event Storming เป็นแค่ prelude สำหรับ TO-BE System Design ซึ่งผิดจากจุดประสงค์เดิม

---

## แนวคิดหลัก (Core Concepts)

### สิ่งที่ DDD ควรทำจริงๆ
- เข้าใจระบบปัจจุบัน (Current System) ให้ถูกต้อง
- ให้ solution ที่ sustainable ตามความเข้าใจนั้น
- ไม่ใช่แค่ design TO-BE system เฉยๆ

### ปัญหาของ DDD ในองค์กร Pivotal
- เน้นแค่ solution space
- Event Storming เหลือแค่ form ไม่มี essence
- ทุกขั้นตอนมีไว้เตรียมสำหรับ TO-BE System Design เท่านั้น

---

## Big Picture Event Storming

### การแบ่ง Role

**หลักการตามหนังสือ:**
- **Facilitator** - ดูแล progress ทั้งหมด แนะนำให้ focus จุดที่ถูก
- **Supporter** - ช่วย Facilitator ให้ workshop ลื่นไหล
- **Narrator** - อธิบาย walkthrough ตรวจสอบว่าทุกคนเข้าใจ

**จริงที่ใช้ (Practical approach):**
- **Out-Box** (อธิบาย methodology) → คนที่รู้ DDD process เป็นดี
- **In-Fight** (ถกทำกันจริง) → คนที่รู้ business เป็นดีที่สุด

> ถ้าใครไม่รู้ business จริงๆ ก็ทำให้ process เดินหน้าไม่ได้

### Sticky Notes ที่ใช้
- Domain Events
- Actors
- Systems
- Commands (optional)
- Policies (optional)

---

## Workshop Phases - Tips และ Pain Points

### Phase 1: Chaotic Exploration
**Tips:**
- ✅ **ข้ามไป Phase 2/3 เลย** - ไม่ต้อง layout Domain Events แค่นั้น เพราะวนกลับมา add Actor/System ใหม่ก็เสียเวลา
- ✅ **นิยาม Domain Event ชัดเจน** ตั้งแต่แรก
- ✅ **ใช้ Glossary + Ubiquitous Language** ให้ทุกคนใช้คำเหมือนกัน
- ✅ **มี Icebreaker** เมื่อเกิดความเงียบ
- ✅ **ยอมรับว่า timeline จะขาดๆ ต่อๆ** อยู่ก่อน - จัดให้ใน phase ต่อไป

### Phase 2: Enforcing the timeline
- หา Pivotal Events (events สำคัญๆ)
- อย่าใช้เวลานานไปกับการหา pivotal events ที่ perfect

### Phase 3: People and Systems
- **Critical** - Facilitator ต้องมี leadership skills เพื่อตัด discussion ยาวๆ
- ถ้าไม่มีคนคุม discussion จะยืดเวลามาก

### Phase 4: Explicit Walkthrough
- Narrator อธิบาย flow ทั้งหมด
- ถ้า narrator พูดรู้สึกว่ามีอะไรขาด - สามารถ add sticky ได้เลยระหว่างทาง

### Phase 5: Problems & Opportunities
- ไม่มีอะไรพิเศษ

### Phase 6: Pick Your Problem
- Guide สำหรับการตัดสินใจ TO-BE system ในอนาคต
- ไม่ใช่สำหรับ Event Storming ครั้งนี้โดยตรง

---

## เกร็ดเคล็ดลับ (Practical Tips)

### Domain Events
**Definition:** Events ที่ capture changes ซึ่งสามารถ trigger actions หรือ state changes ต่อได้

**หลีกเลี่ยง:**
- Physical event
- Technical term
- Condition-like event

### Ubiquitous Language
- ให้คนใช้คำเหมือนกันหมด
- Business terms → เป็น Ubiquitous Language ได้เลย

### Discussion Management
**อย่า discuss เรื่อง:**
- Rainy scenarios มากเกินไป (ใช้ sunny scenario main)
- Edge cases ที่เกิดได้ยากมากๆ (เช่น ticket หาย)

**Tip:** ถ้า process เหมือนกัน แต่ object ต่างกัน → ใช้ Domain Event เดียวได้

---

## Pain Points จากการใช้งานจริง

1. **ขาด Timeboxing** → Discuss นานเกินไป
   - Solution: Focus บน Sunny Scenario มากกว่า Rainy

2. **TO-BE discussions ทำให้ focus หาย**
   - คนเริ่มเบื่อเมื่อเวลาผ่านไป
   - Solution: ต้องมี TO-BE event flow + system updates บ้าง

3. **Discussions ออกนอก scope หรือผิด abstraction level**
   - Solution: ถ้า discuss นานเกินไป → ใส่ไว้ใน Parking Lot

---

## Key Takeaways

**ถ้าจะทำ DDD ให้ได้ผล:**
1. Focus ที่การเข้าใจ business ปัจจุบัน (not just TO-BE)
2. Facilitator ต้องรู้ DDD process แต่คนใน business ต้องช่วยกัน
3. Timebox discussions ให้ดี
4. ใช้ Sunny Scenario เป็นหลัก
5. Define Domain Events ชัดเจนตั้งแต่แรก
6. เปลี่ยน language ให้เป็น Ubiquitous Language

---

## Related Topics

- #ddd #domain-driven-design
- #eventstorming
- #workshop-facilitation
- #ubiquitous-language
- #agile

## Notes

บทความนี้เน้น practical experience มากกว่า theory ซึ่งเป็นประโยชน์มากสำหรับคนที่จะลองทำ Event Storming จริงๆ ใน org
