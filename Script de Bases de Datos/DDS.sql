DROP DATABASE IF EXISTS EmpresaElectronicos;
CREATE DATABASE EmpresaElectronicos CHARACTER SET utf8;
USE EmpresaElectronicos;

CREATE TABLE Factura
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    int_total INT NOT NULL COMMENT "Total a pagar."

) COMMENT "Información general de factura.";

CREATE TABLE Cliente
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_nombre VARCHAR(50) NOT NULL COMMENT "Nombre del cliente.",
    vchar_apellido VARCHAR(50) NOT NULL COMMENT "Apellido del cliente.",
    vchar_dirección VARCHAR(50) NOT NULL COMMENT "Dirección del cliente.",
    vchar_telefono VARCHAR(50) NOT NULL COMMENT "Telefono del cliente."

) COMMENT "Información general del cliente.";

CREATE TABLE Venta
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_fecha DATE NOT NULL COMMENT "Fecha en que se hizo la venta.",
    fk_clienteID INT NOT NULL COMMENT "Referencia la tabla cliente.",
    fk_facturaID INT NOT NULL COMMENT "Referencia la tabla factura.",
    FOREIGN KEY (fk_clienteID) REFERENCES Cliente(id),
    FOREIGN KEY (fk_facturaID) REFERENCES Factura(id)

) COMMENT "Información general de la venta.";

CREATE TABLE Dirección
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_dirección VARCHAR(50) NOT NULL COMMENT "Dirección de la tienda.",
    fk_ventaID INT NOT NULL COMMENT "Referencia a la tabla venta.",
    FOREIGN KEY (fk_ventaID) REFERENCES Venta(id)

) COMMENT "Información general de la dirección.";

CREATE TABLE Fabrica
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_nombre VARCHAR(50) NOT NULL COMMENT "Nombre de la fabrica.",
    vchar_correo VARCHAR(50) NOT NULL COMMENT "Correo de la fabrica.",
    vchar_telefono VARCHAR(50) NOT NULL COMMENT "Telefono de la fabrica.",
    fk_direcciónID INT NOT NULL COMMENT "Referencia la tabla dirección.",
    FOREIGN KEY (fk_direcciónID) REFERENCES Dirección(id)

) COMMENT "Información general de la fabrica.";

CREATE TABLE Tienda
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_nombre VARCHAR(50) NOT NULL COMMENT "Nombre de la tienda",
    fk_fabricaID INT NOT NULL COMMENT "Referencia a la tabla fabrica.",
    FOREIGN KEY (fk_fabricaID) REFERENCES Fabrica(id)

) COMMENT "Información general de la tienda.";

CREATE TABLE Producto
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_nombre VARCHAR(50) NOT NULL COMMENT "Nombre del producto.",
    fl_precio FLOAT NOT NULL COMMENT "Precio del producto.",
    int_disponibilidad INT NOT NULL COMMENT "Existencia del producto.",
    tex_descripción INT NOT NULL COMMENT "Descripción del producto.",
    fk_tiendaID INT NOT NULL COMMENT "Referencia a la tabla tienda.",
    FOREIGN KEY (fk_tiendaID) REFERENCES Tienda(id)

) COMMENT "Información general del producto.";

CREATE TABLE Categoria
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vchar_nombre VARCHAR(50) NOT NULL COMMENT "Categoria en la que se encuentra el producto.",
    fk_productoID INT NOT NULL COMMENT "Referencia la tabla Producto.",
    FOREIGN KEY (fk_productoID) REFERENCES Producto(id)

) COMMENT "Información general de la categoria.";