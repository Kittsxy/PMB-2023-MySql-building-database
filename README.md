# 🎓 PMB 2023 – Student Admission Database

This project simulates the process of building a **relational database** to handle student registration, admission tests, program selection, and faculty-level reporting. Built using MySQL, the database supports key academic operations in a university setting.

---

## 📝 Description

This project was created as part of a learning initiative to simulate real-world database development using **MySQL**. It covers the end-to-end process of designing, normalizing, and implementing a database system that reflects how universities manage student admission workflows.

From student registration to test selection and program placement, the system organizes data efficiently across multiple tables with proper relational keys. The project also includes sample queries to analyze the number of applicants, registration types, and program-level insights.

Key learning outcomes from this project include:
- Understanding **relational database design**
- Implementing **foreign key relationships** and **JOINs**
- Writing queries using **GROUP BY**
- Creating an **Entity Relationship Diagram (ERD)**

The entire project was built independently using MySQL and is aimed at showcasing practical skills in data modeling, query logic, and database organization.

---

## 📂 Files Included

- `pmb_2023.sql` – Database schema and dummy data for testing
- `erd_pmb_2023.png` – Entity Relationship Diagram (ERD)    
- `dataset.csv` – For the dataset 
- Sample SQL queries (see below)

---

## 🧱 Database Structure

**Main Tables:**
- `user` – Stores student personal data
- `pmb` – PMB records
- `program_studi` – List of study programs and their associated faculty
- `jenis_pendaftaran` – Types of registration
- `status_registrasi` – Registration status

---

## 🛠 Tools Used

- MySQL  
- MySQL Workbench  
- (Optional) dbdiagram.io for ERD  

---

## 🔍 Sample Queries

```sql
-- Create Table
create	table program_studi(
id_prodi varchar(50 not null,
program_studi varchar(50) not null,
id_fakultas int not null,
primary key (id_prodi)
)

---

**📊 How to Use**
1. Clone this repo or download the SQL file
2. Import pmb_2023.sql into your MySQL server
3. Run SQL queries using MySQL Workbench or phpMyAdmin
4. Explore relationships and generate reports
