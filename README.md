Crownfield Eye Hospital Ophthalmology Database
Module
CPU4:103 Introduction to Databases

Project Description
This project was developed for the fictional Crownfield Eye Hospital NHS Foundation Trust.

The database supports the management of:

Patients
Clinicians
Specialties
Clinics
Appointments
Diagnoses
Prescriptions
Medicines
Follow-Up Plans
The database was implemented using MySQL Workbench.

Database Setup
Step 1
Create a new database:

CREATE DATABASE CrownfieldEyeHospital;
USE CrownfieldEyeHospital;
Step 2
Execute SQL files in the following order:

01_schema.sql
02_individual_queries.sql
03_procedure_and_trigger.sql
04_security.sql
Repository Structure
CrownfieldEyeHospitalDB
│
├── 01_schema.sql
├── 02_individual_queries.sql
├── 03_procedure_and_trigger.sql
├── 04_security.sql
├── README.md
└── ERD.png
Assumptions
The following assumptions were made:

Each clinician has one primary specialty.
Each appointment belongs to one patient.
A patient may have multiple appointments.
A prescription can contain multiple medicines.
Follow-up plans are linked to appointments.
Passwords are stored using hashing techniques.
Software Used
MySQL Workbench
GitHub
Microsoft Word
Author
Student Name: Jagruti Barot

Module Code: CPU4:103

Academic Year: 2026

Updated README with latest project files
