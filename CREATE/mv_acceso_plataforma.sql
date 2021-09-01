CREATE TABLE bibliotecas.mv_acceso_plataforma (
	map_uid VARCHAR(45) NOT NULL COMMENT 'Id de la tabla',
	map_user_id int NOT NULL COMMENT 'Id del usuario que registra actividad en la plataforma',
	map_start_date DATE NOT NULL COMMENT 'Fecha de inicio de login',
	map_start_time TIME NOT NULL COMMENT 'Hora de inicio de login',
	map_end_date DATE NOT NULL COMMENT 'Fecha de fin de login',
	map_end_time TIME NOT NULL COMMENT 'Hora de fin de login',
	map_activity_id INT NULL COMMENT 'Id de la actividad a la que accedió'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Log de acceso a la plataforma';
