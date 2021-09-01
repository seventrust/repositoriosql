CREATE TABLE bibliotecas.mv_actividades_usuarios (
        mau_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
        mau_user_id INT NOT NULL COMMENT 'Id del usuario que realizó la actividad',
        mau_date_activity_done DATETIME NOT NULL COMMENT 'Fecha de la realización de la actividad',
        mau_activity_grade DOUBLE NULL COMMENT 'Calificación de la actividad a nivel de usuario',
        mau_date_created DATETIME NOT NULL COMMENT 'Fecha de creación del registro',
        mau_date_modified DATETIME NULL COMMENT 'Fecha de modificación del registro',
        mau_version INT NULL COMMENT 'Traza de audotoría, distintos usos'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Registro de actividades realizadas por los alumnos';
