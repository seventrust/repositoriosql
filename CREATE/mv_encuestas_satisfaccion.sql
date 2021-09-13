CREATE TABLE bibliotecas.mv_encuestas_satisfaccion (
	mes_id BIGINT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	mes_user_id INT NOT NULL COMMENT 'Usuario que respondió la encuesta',
	mes_user_rut VARCHAR(20) NOT NULL COMMENT 'Rut del usaurio que responde la encuesta',
	mes_id_convocatoria INT NOT NULL COMMENT 'Id de la convocatoria asosciada',
	mes_id_curso INT NOT NULL COMMENT 'Id del curso asociado a la encuesta'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Se alamacena las respuestas de la encuesta de satisfacción';
