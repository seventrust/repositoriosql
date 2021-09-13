CREATE TABLE bibliotecas.mv_cursos_tutores (
	mct_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	mct_user_rut VARCHAR(20) NOT NULL COMMENT 'Rut del usuario tutor en el curso',
	mct_user_id INT NOT NULL COMMENT 'Id del usuario tutor en el curso',
	mct_course_id int DEFAULT NULL COMMENT 'Id del curso',
	mct_date_created DATETIME NOT NULL COMMENT 'Fecha creación del registro',
	mct_date_modified DATETIME NULL COMMENT 'Fecha de modificación del registro',
	mct_version INT NULL COMMENT 'Traza de audotoría, distintos usos (no borrar de BD ej.)'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Cursos donde los tutores están enrolados (como tutor)';
