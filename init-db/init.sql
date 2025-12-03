-- Tabla para formulario de contacto/registros
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    mensaje TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para ejemplo adicional: cursos
CREATE TABLE IF NOT EXISTS cursos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL UNIQUE,
    descripcion TEXT,
    duracion_horas INT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos de ejemplo
INSERT INTO cursos (nombre, descripcion, duracion_horas) VALUES
    ('PHP Avanzado', 'Curso completo de PHP con patrones de diseño', 40),
    ('PostgreSQL Mastery', 'Domina las bases de datos relacionales', 35),
    ('Docker for Developers', 'Containerización profesional de aplicaciones', 30)
ON CONFLICT (nombre) DO NOTHING;

-- Tabla de usuarios de acceso interno
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Usuario administrador INICIAL (contraseña: admin123)
INSERT INTO users (username, email, password_hash)
VALUES(
    'admin',
    'pabloaldrey12@gmailcom',
    '$2y$10$sw2i7.AJgFoYC/rT81WVdOhxrCnxIgEBJ3gxfsgf4rvyL8aOFdGu'      
    )
ON CONFLICT (username) DO NOTHING;
-- La contraseña 'admin123' ha sido hasheada usando password_hash en PHP
