USE ophthalmology_db;

DELIMITER //

CREATE PROCEDURE AddAppointment(
    IN p_PatientID VARCHAR(10),
    IN p_ClinicianID INT,
    IN p_ClinicID INT,
    IN p_AppointmentDate DATE,
    IN p_AppointmentTime TIME,
    IN p_Diagnosis VARCHAR(200),
    IN p_FollowUpWeeks INT,
    IN p_Priority VARCHAR(20),
    IN p_Notes VARCHAR(255)
)
BEGIN

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
        p_PatientID,
        p_ClinicianID,
        p_ClinicID,
        p_AppointmentDate,
        p_AppointmentTime,
        p_Diagnosis,
        p_FollowUpWeeks,
        p_Priority,
        p_Notes
    );

END //

DELIMITER ;