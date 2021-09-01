CREATE TABLE bibliotecas.ma_actividades (
	ma_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id de la tabla',
	ma_activity_id INT NULL COMMENT 'Id de la actividad en Moodle',
	ma_activity_type varchar(100) NULL COMMENT 'Descripción del tipo de actividad',
	ma_activity_name VARCHAR(400) NULL COMMENT 'Nombre/Actividad de la actividad',
	ma_activity_grade DOUBLE NULL COMMENT 'Calificacion de la actividad a nivel de usuario',
	ma_activity_start_date DATETIME NULL COMMENT 'Fecha y hora de la realización de la actividad',
	ma_activity_weight DOUBLE NULL COMMENT 'Ponderación de la actividad respecto de nota final'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
AUTO_INCREMENT=1;
