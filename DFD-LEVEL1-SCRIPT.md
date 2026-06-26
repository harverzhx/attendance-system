# DFD Level 1 — Internal Processes Script for Reporting

---

## [1] Introduction

"Last time, atong gitan-aw ang **Context Diagram** or **Level 0** — kung asa ang system usa lang ka box ug gipakita lang ang external entities ug ang data nga mo-flow in and out.

Karon, atong i-present ang **DFD Level 1** — **Internal Processes**. Diri, ato nang gi-break down ang center process from Level 0 into **lima ka sub-processes**. Gipakita na pud nato ang **Data Stores** or databases nga atong gamiton."

---

## [2] Overview sa Diagram

"Sa atong Level 1 DFD, makita nato ang:

- **4 ka External Entities** — same ra sa Level 0: Admin, Teacher/Staff, Parent, Student
- **5 ka Processes** — numbered 1.0 to 5.0, nga nag-represent sa mga major functions sa system
- **4 ka Data Stores** — D1 to D4, nga nag-hold sa data nga atong gi-store
- **Data Flows** — mga arrow nga nag-connect sa tanan

Ang layout kay organized vertically — ang processes naa sa center, entities sa left ug right, ug data stores sa tunga-tunga."

---

## [3] Processes (Step by Step)

### [3a] 1.0 — Authenticate Users

"First process: **1.0 — Authenticate Users**. Kini ang nag-handle sa **login** sa tanang users.

**Input data:**
- Gikan sa **Admin, Teacher, ug Parent** — mo-send sila ug **Login Credentials** (username ug password)

**Process:**
- Gi-verify sa system ang credentials batok sa **D1 — User Accounts** data store
- Kung match, mo-generate ug **Auth Token**

**Output data:**
- Balik sa Admin, Teacher, Parent — **Auth Result** (success or failed)
- Padulong sa processes 2.0, 3.0, 4.0, 5.0 — **Auth Token** (para recognized na sila sa system)"

### [3b] 2.0 — Manage Students

"Second process: **2.0 — Manage Students**. Kini ang nag-handle sa pag-manage sa student records.

**Input data:**
- Gikan sa **Admin** — **Student CRUD** (Create, Read, Update, Delete operations)
- Gikan sa **Teacher** — **View Students** request
- Gikan sa **1.0 Authenticate** — **Auth Token**

**Process:**
- Mag-read ug mag-write sa **D2 — Student Records** data store

**Output data:**
- Balik sa **Admin** — **Student Lists**
- Balik sa **Teacher** — **Class Lists**
- Padulong sa **3.0 Record Attendance** — **Student Details** (para ma-recognize ang student pag-scan)"

### [3c] 3.0 — Record Attendance

"Third process: **3.0 — Record Attendance**. Kini ang **core** sa atong system — ang pag-record sa attendance.

**Input data:**
- Gikan sa **Teacher** — **Attendance Data** (manual marking)
- Gikan sa **Student** — **Barcode / QR Scan**
- Gikan sa **1.0 Authenticate** — **Auth Token**
- Gikan sa **2.0 Manage Students** — **Student Details**

**Process:**
- Mag-lookup sa **D2 — Student Records** para ma-verify ang student nga nag-scan
- Mag-write sa attendance record sa **D3 — Attendance Log**

**Output data:**
- Balik sa **Student** — **Scan Result** (Present / Late)
- Padulong sa **4.0 Generate Reports** — **Attendance Data** (para sa reports)"

### [3d] 4.0 — Generate Reports

"Fourth process: **4.0 — Generate Reports**. Kini ang nag-handle sa mga reports ug dashboard.

**Input data:**
- Gikan sa **Admin** — **Report Requests**
- Gikan sa **Parent** — **View History**
- Gikan sa **1.0 Authenticate** — **Auth Token**
- Gikan sa **3.0 Record Attendance** — **Attendance Data**

**Process:**
- Mag-read sa **D3 — Attendance Log** para sa attendance data
- Mag-read sa **D2 — Student Records** para sa student information
- Mag-compute ug mag-generate ug reports

**Output data:**
- Balik sa **Admin** — **Dashboard + Reports**
- Balik sa **Teacher** — **Section Reports**
- Balik sa **Parent** — **Attendance History**
- Padulong sa **5.0 Send Notifications** — **Notify Triggers** (kung naay absent or late, i-trigger ang email)"

### [3e] 5.0 — Send Notifications

"Fifth process: **5.0 — Send Notifications**. Kini ang nag-handle sa automatic nga email notifications.

**Input data:**
- Gikan sa **1.0 Authenticate** — **Auth Token**
- Gikan sa **4.0 Generate Reports** — **Notify Triggers**

**Process:**
- Mag-check sa **D3 — Attendance Log** para ma-confirm ang absences
- Mag-read sa **D2 — Student Records** para makuha ang **Parent Contact** (email address)
- Mag-send ug email notification
- Mag-log sa sent email sa **D4 — Email Log**

**Output data:**
- Padulong sa **Parent** — **Email Notif** (automatic email about attendance)"

---

## [4] Data Stores

"Mao ni ang atong **four data stores** or databases:

| ID | Data Store | Description |
|----|-----------|-------------|
| **D1** | **User Accounts** | Stores usernames, passwords, ug roles (Admin, Teacher, Parent) |
| **D2** | **Student Records** | Stores student profiles, class sections, ug parent contact info |
| **D3** | **Attendance Log** | Stores daily attendance records — time-in, time-out, status (Present/Late/Absent) |
| **D4** | **Email Log** | Stores history sa mga na-send nga email notifications |

Ang data stores kay **passive** — ang processes lang ang nagbutang ug nagkuha sa data."

---

## [5] Data Flow Summary

"Importanteng i-highlight nga ang tanang data flow, parehas sa Level 0, nagsunod sa **Gane & Sarson rule** — ang data can't move directly from one entity to another, or from entity to store, without passing through a **process**. Makita nato nga ang tanang arrow kay naka-connect sa usa ka process."

---

## [6] Closing

"So in summary, ang atong **Level 1 DFD** nag-show kung giunsa pag-breakdown ang system into **5 major processes**:

1. **Authenticate Users** — login verification
2. **Manage Students** — student record management
3. **Record Attendance** — core attendance recording via barcode/QR
4. **Generate Reports** — dashboard ug reporting
5. **Send Notifications** — automatic email alerts

Ug naa tay **4 ka data stores** nga nag-support sa system.

Kini nga diagram naghatag ug mas klaro nga picture sa internal workings sa atong School Gate Attendance System."

---

## Quick Talking Points (Bullet Version)

| Step | Sulti |
|------|-------|
| Intro | "Level 1 — gi-break down nato ang system into 5 sub-processes with 4 data stores." |
| 1.0 Auth | "1.0 Authenticate Users — login verification batok sa D1 User Accounts; mo-send ug Auth Token sa ubang processes." |
| 2.0 Students | "2.0 Manage Students — CRUD operations sa D2 Student Records; Admin mag-manage, Teacher maka-view." |
| 3.0 Attendance | "3.0 Record Attendance — core process; Student mag-scan, Teacher mag-mark; mu-store sa D3 Attendance Log." |
| 4.0 Reports | "4.0 Generate Reports — mag-read sa D2 ug D3 para mugawas ang dashboard, reports, attendance history." |
| 5.0 Notifications | "5.0 Send Notifications — ma-trigger gikan sa 4.0; mag-read sa D2 para sa parent contact; mag-send ug email." |
| Data Stores | "D1 Users, D2 Students, D3 Attendance, D4 Email Log — passive stores, processes lang ang mu-access." |
| Closing | "Mao ni ang Level 1 — detailed internal view sa atong School Gate Attendance System." |
