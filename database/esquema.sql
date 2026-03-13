CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    password TEXT,
    rol VARCHAR(50)
);

CREATE TABLE mesas (
    id SERIAL PRIMARY KEY,
    numero INT,
    estado VARCHAR(50)
);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE menu (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    precio NUMERIC(10,2),
    categoria_id INT REFERENCES categorias(id),
    disponible BOOLEAN DEFAULT true
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    mesa_id INT REFERENCES mesas(id),
    mesero_id INT REFERENCES usuarios(id),
    estado VARCHAR(50),
    total NUMERIC(10,2),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pedido_items (
    id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(id),
    producto_id INT REFERENCES menu(id),
    cantidad INT,
    precio NUMERIC(10,2)
);