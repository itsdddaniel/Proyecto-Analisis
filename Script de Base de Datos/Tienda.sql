-- MySQL Workbench Forward Engineering

--SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
--SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
--SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS Tienda CHARACTER SET utf8 ;
USE Tienda ;

-- -----------------------------------------------------
-- Table `Tienda`.`Marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Marca (
  idMarca INT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL,
  descripcion VARCHAR(45) NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria (
  id_categoria INT NOT NULL PRIMARY KEY ,
  name VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Categoria/Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria_Producto (
  id_producto INT NOT NULL PRIMARY KEY,
  id_categoria INT NOT NULL,

    FOREIGN KEY (id_categoria)
    REFERENCES Categoria (id_categoria)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Novedad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Novedad (
  idNovedad INT NOT NULL PRIMARY KEY,
  tipoNovedad ENUM("Descuento") NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Estado (
  idEstado INT NOT NULL PRIMARY KEY,
  tipoEstado ENUM("Agotado") NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Producto (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  id_producto INT NOT NULL,
  id_marca INT NOT NULL,
  id_estado INT NOT NULL,
  id_novedad INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  PrecioCompra FLOAT UNSIGNED NOT NULL,
  PrecioVenta FLOAT UNSIGNED NOT NULL,
  fechaEntrada DATETIME NOT NULL,
  urlProducto VARCHAR(250) NOT NULL,
  Descripcion TEXT(50) NULL,

    FOREIGN KEY (id_marca)
    REFERENCES Marca (idMarca)
    ON DELETE NO ACTION ON UPDATE NO ACTION,

    FOREIGN KEY (id_producto)
    REFERENCES Categoria_Producto (id_producto)
    ON DELETE NO ACTION ON UPDATE NO ACTION,

    FOREIGN KEY (id_novedad)
    REFERENCES Novedad (idNovedad)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_estado)
    REFERENCES Estado (idEstado)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Paquete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Paquete (
  idPaquete INT NOT NULL PRIMARY KEY ,
  nomre VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Paquete/Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Paquete_Producto (
  id_Paquete INT NOT NULL,
  id_Producto INT NOT NULL,

    FOREIGN KEY (id_Producto)
    REFERENCES Producto (id_producto)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_Paquete)
    REFERENCES Paquete (idPaquete)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cargo (
  idCargo INT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Empleado (
  dni VARCHAR(45) NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL,
  Apellidos VARCHAR(45) NOT NULL,
  Pais VARCHAR(45) NOT NULL,
  Imail VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  id_Cargo INT NOT NULL,

    FOREIGN KEY (id_Cargo)
    REFERENCES Cargo (idCargo)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  dni VARCHAR(45) NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL,
  Apellidos VARCHAR(45) NOT NULL,
  Pais VARCHAR(45) NOT NULL,
  Imail VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  TipoPago ENUM("Efectivo") NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Orden (
  idVenta INT NOT NULL PRIMARY KEY ,
  id_cliente VARCHAR(45) NOT NULL,
  id_empleado VARCHAR(15) NOT NULL,
  Fecha DATE NOT NULL,

    FOREIGN KEY (id_empleado)
    REFERENCES Empleado (dni)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (dni)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Detalle Orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Detalle_Orden (
  id_venta INT NOT NULL ,
  id_producto INT NOT NULL ,
  cantidad INT NOT NULL,
  precioUnitario FLOAT NOT NULL,
  SubTotal FLOAT UNSIGNED NOT NULL,
  ISV FLOAT UNSIGNED NOT NULL,
  Descuento FLOAT NOT NULL,
  Total FLOAT UNSIGNED NOT NULL,
  Recibido INT NULL,
  Cambio FLOAT NULL,

    FOREIGN KEY (id_producto)
    REFERENCES Producto (id_producto)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_venta)
    REFERENCES Orden (idVenta)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Distribuidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Distribuidor (
  idDistribuidor INT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  fax VARCHAR(45) NOT NULL,
  web VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Compra (
  idCompra INT NOT NULL PRIMARY KEY ,
  id_distribuidor INT NOT NULL,
  fecha DATETIME NOT NULL,

    FOREIGN KEY (id_distribuidor)
    REFERENCES Distribuidor (idDistribuidor)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Detalle Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Detalle_Compra (
  id_Compra INT NOT NULL ,
  id_producto INT NOT NULL ,
  cantidad INT NOT NULL,
  precio FLOAT NOT NULL,
  NumReferencia VARCHAR(45) NOT NULL,

    FOREIGN KEY (id_producto)
    REFERENCES Producto (id_producto)
    ON DELETE NO ACTION ON UPDATE NO ACTION,

    FOREIGN KEY (id_Compra)
    REFERENCES Compra (idCompra)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Devolucion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Devolucion (
  idDevolucion INT NOT NULL PRIMARY KEY ,
  causa VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Detalle Devolucion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Detalle_Devolucion (
  id_Devolucion INT NOT NULL ,
  id_producto INT NOT NULL ,

    FOREIGN KEY (id_producto)
    REFERENCES Producto (id_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    FOREIGN KEY (id_Devolucion)
    REFERENCES Devolucion (idDevolucion)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Accion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Accion (
  idAccion INT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Login1 (
  idLogin INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  id_empleado VARCHAR(45) NOT NULL,
  id_accion INT NOT NULL,
  fecha DATETIME NOT NULL,

    FOREIGN KEY (id_empleado)
    REFERENCES Empleado (dni)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_accion)
    REFERENCES Accion (idAccion)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;



--SET SQL_MODE=@OLD_SQL_MODE;
--SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
--SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
