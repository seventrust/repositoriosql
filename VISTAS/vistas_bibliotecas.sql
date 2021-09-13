-- VISTA DE USUARIOS - APRENDICES
SELECT * FROM ma_identificacion_usuario miu 
WHERE miu.miu_user_role = 'APRENDIZ';
                               
-- VISTA DE USUARIOS - TUTORES Y MEGATUTORES
SELECT * FROM ma_identificacion_usuario miu 
WHERE miu.miu_user_role IN ('TUTOR', 'MEGATUTOR');

-- VISTA DE APRENDICES ENROLADOS EN CURSOS
SELECT miu.*, mcu.mcu_course_status ,mcm.mcm_course_name  
FROM ma_identificacion_usuario miu 
INNER JOIN mv_cursos_usuarios mcu ON miu.miu_user_rut = mcu.mcu_user_rut
INNER JOIN ma_cursos_moodle mcm ON mcm.mcm_id_moodle = mcu.mcu_course_id 
WHERE miu.miu_user_role IN ('APRENDIZ');

-- VISTA DE TUTORES Y MEGATUTORE EN CURSOS
SELECT * FROM ma_identificacion_usuario miu 
INNER JOIN mv_cursos_usuarios mcu ON miu.miu_user_rut = mcu.mcu_user_rut
WHERE miu.miu_user_role IN ('TUTOR', 'MEGATUTOR');

-- VISTA DE CONVOCATORIAS -> ENTREGA LAS CONVOCATORIAS 
SELECT * FROM ma_convocatorias mc 
INNER JOIN ma_cursos_moodle mcm ON JSON_CONTAINS(mc.mc_course_ids, CAST(mcm.mcm_id_moodle AS CHAR));

-- VISTA DE CURSOS APROBADOS/REPROBADOS POR LOS APRENDICES -> CURSOS
SELECT * FROM ma_cursos_moodle mcm 
INNER JOIN mv_cursos_usuarios mcu ON mcm.mcm_id_moodle = mcu.mcu_course_id 
WHERE mcu.mcu_course_status = 1; -- 1 - 0 (0 reprobados - 1 aprobados)

-- VISTA DE ACCESO A LA PLATAFORMA - TODOS LOS USUARIOS!
SELECT * FROM mv_acceso_plataforma map2
INNER JOIN ma_identificacion_usuario miu ON miu.miu_user_rut = map2.map_user_rut
INNER JOIN ma_actividades ma ON map2.map_activity_id = ma.ma_activity_id
WHERE ma.ma_activity_type LIKE ''; -- PUEDE SER DEL TIPO SEGÚN EL VARCHAR O PUEDE SER -> IN('ACTIVIDADES', 'ETC')

-- VISTA DE ACTIVIDADES REALIZADAS - LOS APRENDICES
SELECT * FROM ma_actividades ma 
INNER JOIN mv_actividades_usuarios mau ON ma.ma_activity_id = ma.ma_activity_id 
INNER JOIN ma_identificacion_usuario miu ON mau.mau_user_rut = miu.miu_user_rut 
WHERE miu.miu_user_role IN ('APRENDIZ');

-- VISTA DE ENCUENTAS DE SATISFACCIÓN - LOS APRENDICES???
SELECT * FROM mv_encuestas_satisfaccion mes 
INNER JOIN ma_identificacion_usuario miu ON mes.mes_user_id = miu.miu_user_id 
INNER JOIN mv_actividades_usuarios mau ON miu.miu_user_id = mau.mau_user_id 
INNER JOIN ma_actividades ma ON mau.mau_id = ma.ma_activity_id 
WHERE miu.miu_user_role IN ('APRENDIZ');
 


 
