CREATE TABLE bibliotecas.ma_cursos_moodle (
	mcm_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	mcm_id_moodle INT NULL COMMENT 'Id del curso en Mooodle',
	mcm_start_date DATETIME NULL COMMENT 'Fecha (y hora) de inicio del curso',
	mcm_end_date DATETIME NULL COMMENT 'Fecha (y hora) de finalización del curso',
	mcm_course_type VARCHAR(100) NULL COMMENT 'Tipo de curso (autoaprendizaje, bajo nivel tutoría, alto nivel de tutoría',
	mcm_convocatoria_id INT NULL COMMENT 'Id de la convocatoria'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Cursos en Moodle';
