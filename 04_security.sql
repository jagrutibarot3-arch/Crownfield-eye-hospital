GRANT SELECT ON clinicdb.* TO 'receptionist'@'localhost';

SHOW GRANTS FOR 'receptionist'@'localhost';

CREATE USER 'doctor'@'localhost'
IDENTIFIED BY 'Doctor123!';

GRANT SELECT, UPDATE
ON clinicdb.appointment
TO 'clinician'@'localhost';

SHOW GRANTS FOR 'clinician'@'localhost';

CREATE USER 'admin_user'@'localhost'
IDENTIFIED BY 'Admin123!';

GRANT ALL PRIVILEGES
ON clinicdb.*
TO 'admin_user'@'localhost';