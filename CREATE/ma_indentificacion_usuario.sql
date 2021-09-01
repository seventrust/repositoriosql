CREATE TABLE bibliotecas.ma_identificacion_usuario (
	miu_id INT auto_increment PRIMARY KEY NOT NULL COMMENT 'Id incremental de la tabla',
	miu_user_id INT NOT NULL COMMENT 'ID que entrega Modle',
	miu_user_rut varchar(10) NULL COMMENT 'RUT del usuario ',
	miu_user_name VARCHAR(100) NULL COMMENT 'Nombre del usuario',
	miu_user_lastname varchar(100) NULL COMMENT 'Apellido(s) del usuario',
	miu_user_birth_day DATE NULL COMMENT 'Fecha de naciemiento del usuario',
	miu_user_profession varchar(200) NULL COMMENT 'Título profesional del usuario',
	miu_user_region varchar(100) NULL COMMENT 'Región del usuario',
	miu_user_commune varchar(200) NULL COMMENT 'Comuna del usuario',
	miu_user_genre varchar(2) NULL COMMENT 'Género del usuario',
	miu_user_email varchar(100) NULL COMMENT 'Correo-e del usuario',
	miu_user_enrolled_date DATETIME NULL COMMENT 'Fecha (y hora) de enrolamiento',
	miu_user_place_rbd varchar(100) NULL COMMENT 'RBD del establecimiento',
	miu_user_place varchar(100) NULL COMMENT 'Nombre del establecimiento',
	miu_user_role ENUM('APRENDIZ', 'TUTOR', 'MEGATUTOR') NULL COMMENT 'Rol del usuario en plataforma',
	miu_user_status varchar(100) NULL COMMENT 'Estado del usuario (activo, abandono, reemplazo, desertor, RVJ)'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci
COMMENT='Comtempla estudiantes, tutortes y megatutores';
