CREATE TABLE bibliotecas.ma_convocatorias (
	mc_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	mc_start_date DATETIME NULL COMMENT 'Fecha (y hora) de inicio de la convocatroria',
	mc_end_date DATETIME NULL COMMENT 'Fecha (y hora) de finalización de la convocatroria',
	mc_course_ids json NULL COMMENT 'Cursos de la convocatoria'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Aulas en Moodle;
