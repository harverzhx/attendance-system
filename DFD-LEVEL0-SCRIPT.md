# DFD Level 0 — Context Diagram Script for Reporting

---

## [1] Introduction

"Good day everyone. Before nato i-present ang detail sa atong system, ato lang una tan-awon ang **Context Diagram** or **DFD Level 0** sa atong School Gate Attendance System.

Ang Context Diagram kay ang pinaka- **high-level view** sa atong system. Gipakita ani kung **kinsa** ang mga nag-interact sa system ug **unsa** ang mga data nga nag-flow in and out."

---

## [2] Point to the Center (Process)

"Sa tunga sa diagram, makita nato ang **Process** — kani nga rounded rectangle nga gi-label og '0 — School Gate Attendance System'.

I-represent niini ang **entire system** nato isip usa ka box. Diri sa Level 0, wala pa ta mag-detail sa internal processes. Ang gi-focus lang nato kay ang **boundary** sa system — kung unsa ang sulod, ug kung unsa ang gawas.

Ang dashed box palibot ani gitawag og **System Boundary** — para mailhan nato kung asa ang sistema ug asa ang external entities."

---

## [3] Point to the External Entities

"Sunod, naa tay **upat ka External Entities**. Kini sila ang mga tawo or organizations nga naa sa **gawas** sa system pero nag-interact sa atong sistema."

### [3a] Admin

"First, ang **Admin** — gi-represent nato siya og orange nga rectangle. Ang Admin ang nag-handle sa:
- **Login Credentials** — mo-login siya para ma-access ang system
- **Manage Requests** — pag-add, edit, delete ug users, students, sections, ug settings

Ug gikan sa system, ang Admin makadawat og:
- **Dashboard Data** — ang real-time nga updates
- **Reports** — mga detailed reports
- **Confirmations** — confirmation nga successful ang iyang gibuhat"

### [3b] Teacher / Staff

"Second, ang **Teacher / Staff** — purple nga rectangle. Sila ang:
- **Login Credentials** — mo-login pud sila
- **Attendance Records** — mag-record sila ug attendance sa mga students

Ug gikan sa system, makadawat sila og:
- **Class Lists** — listahan sa students under nila
- **Section Reports** — attendance reports per section"

### [3c] Parent

"Third, ang **Parent** — green nga rectangle. Ang Parent kay:
- **Login Credentials** — mo-login para ma-monitor ilang anak
- **View Request** — mangayo ug attendance history

Ug gikan sa system, makadawat sila og:
- **Email Notifications** — automatic nga email kung absent or late ang bata
- **Attendance History** — complete history sa pag-attend sa ilang anak"

### [3d] Student

"Fourth, ang **Student** — red nga rectangle. Sila ang:
- **Barcode / QR Scan** — mag-scan ilang ID pagsulod ug paggawas sa school gate

Ug gikan sa system, makadawat sila og:
- **Scan Result** — kung Present or Late sila, makita dayon sa scanner"

---

## [4] Explain the Data Flows

"Ang mga **arrow** sa diagram gitawag og **Data Flows**. Kini ang nag-represent sa pagbalhin sa data gikan sa usa ka entity padulong sa system, or gikan sa system padulong sa entity.

Importanteng note: Sa **Gane & Sarson notation**, ang tanang data flow dapat magsugod ug matapos sa **Process**. Dili pwede nga ang data mo-flow diretso gikan sa entity padulong sa lain entity, or gikan sa entity diretso sa data store, nga walay process. Mao nang makita ninyo nga ang tanang arrow diri kay naka-connect sa center process."

---

## [5] Explain the Legend

"Sa ubos sa diagram, naa tay **Legend** nga nag-explain sa Gane & Sarson notation:
- **External Entity** — double square with shadow: sources or destinations sa data
- **Process** — rounded rectangle: nag-transform ug input data into output data
- **Data Flow** — arrow with label: movement sa data
- **Data Store** — open-ended rectangle: collection sa data at rest (wala pa ni makita sa Level 0, makita ni sa Level 1)"

---

## [6] Closing

"Mao ni ang atong **Context Diagram**. I-show ni nato sa mga stakeholders ang **overall scope** sa system — kung kinsay mga involved ug kung unsa ang data nga mo-flow in and out.

Sa sunod nga level (Level 1), i-break down nato ang center process into **detailed sub-processes** ug i-show na nato ang **data stores** or databases nga atong gamiton."

---

## Quick Talking Points (Bullet Version)

| Step | Sulti |
|------|-------|
| Intro | "This is the Context Diagram or DFD Level 0 — the highest-level view of our system." |
| Process | "Sa center, ang '0 — School Gate Attendance System' — represent sa entire system." |
| Admin | "Admin — orange — mag-manage ug users, students, sections; makadawat ug dashboard ug reports." |
| Teacher | "Teacher/Staff — purple — mag-record ug attendance; makadawat ug class lists ug section reports." |
| Parent | "Parent — green — mo-monitor sa ilang anak; makadawat ug email notif ug attendance history." |
| Student | "Student — red — mag-scan ug barcode/QR; makadawat ug scan result." |
| Flows | "Ang mga arrow kay data flows — tanan naka-connect sa process kay mao nay rule sa Gane & Sarson." |
| Legend | "Sa ubos ang legend — External Entity, Process, Data Flow, Data Store." |
| Next | "Sa Level 1, ato nang i-detail ang internal processes ug data stores." |
