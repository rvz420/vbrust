CREATE TABLE Partidas (
    id_partida INT PRIMARY KEY,
    domicilio VARCHAR(255),
    descripcion VARCHAR(255),
);

CREATE TABLE Transacciones (
    id_transaccion INT AUTO_INCREMENT PRIMARY KEY,
    id_partida INT,
    descripcion VARCHAR(255),
    monto DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (id_partida) REFERENCES Partidas(id_partida)
);
