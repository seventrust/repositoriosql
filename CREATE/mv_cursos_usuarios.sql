CREATE TABLE bibliotecas.mv_cursos_usuarios (
	mcu_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	mcu_user_id INT NOT NULL COMMENT 'Id del usuario enrtolado en el curso',
	mcu_course_id int DEFAULT NULL COMMENT 'Id del curso',
	mcu_course_status TINYINT NULL COMMENT 'Estado del usuario respecto al curso, aprobado o reprobado',
	mcu_date_created DATETIME NOT NULL COMMENT 'Fecha creaciòn del registro',
	mcu_date_modified DATETIME NULL COMMENT 'Fecha de modificación del registro',
	mcu_version INT NULL COMMENT 'Traza de audotoría, distintos usos (no borrar de BD ej.)'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Cursos donde los usuarios están enrolados';
