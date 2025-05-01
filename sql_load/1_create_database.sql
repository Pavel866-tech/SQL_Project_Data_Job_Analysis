CREATE DATABASE sql_course;

-- 1. Verifica conexiones activas (opcional)
SELECT datname, pid, usename, state 
FROM pg_stat_activity
WHERE datname = 'sql_course';

-- 2. Termina las conexiones activas a la base
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE datname = 'sql_course'
  AND pid <> pg_backend_pid();

-- 3. Elimina la base de datos
DROP DATABASE IF EXISTS sql_course;


-- DROP DATABASE IF EXISTS sql_course;