CREATE TABLE bibliotecas.mv_estado_aprendiz (
        meu_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
        meu_user_id INT NOT NULL COMMENT 'Id del usuario que realizó la actividad',
        meu_course_id int NOT NULL COMMENT 'Id del curso donde está enrolado el aprendiz',
        meu_user_status TINYINT NULL COMMENT '0 -> Reprobado 1 -> Aprobado (se puede definir con ENUM)',
        meu_date_created DATETIME NOT NULL COMMENT 'Fecha de creación del registro',
        meu_date_modified DATETIME NULL COMMENT 'Fecha de modificación del registro',
        meu_version INT NULL COMMENT 'Traza de audotoría, distintos usos'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Registro de estado en el curso del aprendiz';
