-- mysql/init.sql
USE appdb;

CREATE TABLE IF NOT EXISTS usuarios (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  nombre     VARCHAR(100) NOT NULL,
  email      VARCHAR(150) UNIQUE NOT NULL,
  creado_en  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nombre, email) VALUES
  ('Admin', 'admin@example.com'),
  ('Test User', 'test@example.com');
