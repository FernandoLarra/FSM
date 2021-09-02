CREATE TABLE usuarios (
	codigo_usuario serial PRIMARY KEY, 
	nombre_usuario varchar(30) NOT NULL,
    telefono_usuario varchar(10) NOT NULL,
	email_ usuario varchar(30) NOT NULL,
    contraseña varchar(10) NOT NULL,
    fecha_creación date NOT NULL DEFAULT CURRENT_DATE,
    fecha_actualizacion date NOT NULL DEFAULT CURRENT_DATE,
    id_rol varchar(10)
);f