-- Trigger to prevent appointments being booked in the past

DELIMITER //

CREATE TRIGGER Check_Appointment_Date
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    IF NEW.AppointmentDate < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Appointment date cannot be in the past';
    END IF;
END//

DELIMITER ;


INSERT INTO Appointment
(
PatientID,
ClinicianID,
ClinicID,
AppointmentDate,
AppointmentTime,
Diagnosis,
FollowUpWeeks,
Priority,
Notes
)
VALUES
(
'OP001',
1,
1,
'2025-01-01',
'10:00:00',
'Test Diagnosis',
6,
'Routine',
'Testing Trigger'
);