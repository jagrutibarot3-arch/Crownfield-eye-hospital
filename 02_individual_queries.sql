SELECT *
FROM Patient;

SELECT
    p.PatientName,
    a.AppointmentDate,
    a.AppointmentTime,
    a.Diagnosis
FROM Patient p
JOIN Appointment a
ON p.PatientID = a.PatientID;

SELECT
    p.PatientName,
    c.ClinicianName,
    c.Specialty,
    a.Diagnosis
FROM Patient p
JOIN Appointment a
ON p.PatientID = a.PatientID
JOIN Clinician c
ON a.ClinicianID = c.ClinicianID
WHERE c.Specialty = 'Glaucoma';

SELECT
    p.PatientID,
    p.PatientName,
    a.AppointmentDate,
    a.Diagnosis
FROM Patient p
INNER JOIN Appointment a
ON p.PatientID = a.PatientID;

SELECT
    p.PatientID,
    p.PatientName,
    a.AppointmentDate,
    a.Diagnosis
FROM Patient p
LEFT JOIN Appointment a
ON p.PatientID = a.PatientID;

SELECT PatientName
FROM Patient
WHERE PatientID IN
(
    SELECT PatientID
    FROM Appointment
    WHERE Diagnosis = 'Ocular hypertension'
);