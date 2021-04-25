--SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
--SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
--SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Tienda
-- -----------------------------------------------------
DROP DATABASE IF EXISTS Tienda;
CREATE DATABASE Tienda CHARACTER SET utf8 ;
USE Tienda ;

-- -----------------------------------------------------
-- Table `Tienda`.`Marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Marca (
  idMarca INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL,
  descripcion VARCHAR(45) NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria (
  idCategoria INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
  nombre VARCHAR(45) NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Categoria/Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria_Producto (
  id_producto INT NOT NULL PRIMARY KEY,
  id_categoria INT NOT NULL,

    FOREIGN KEY (id_categoria)
    REFERENCES Categoria (idCategoria)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Novedad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Novedad (
  idNovedad INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  tipoNovedad ENUM("Descuento","Normal") DEFAULT "Normal" NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Estado (
  idEstado INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  tipoEstado ENUM("Agotado","Existencia") DEFAULT "Existencia" NOT NULL
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Tienda`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Producto (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
  id_producto INT NOT NULL,
  id_marca INT NOT NULL,
  id_estado INT NOT NULL,
  id_novedad INT NOT NULL,
  nombre VARCHAR(60) NOT NULL,	
  PrecioCompra FLOAT UNSIGNED NOT NULL,
  PrecioVenta FLOAT UNSIGNED NOT NULL,
  fechaEntrada DATETIME NOT NULL,
  urlProducto VARCHAR(250) NOT NULL,
  Descripcion TEXT(50) NULL,
  Existencia TINYINT NOT NULL,

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
-- Table `Tienda`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cargo (
  idCargo INT AUTO_INCREMENT NOT NULL PRIMARY KEY ,
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
  Email VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  contraseña VARCHAR(16) NOT NULL,
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
  Email VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Direccion VARCHAR(45) NOT NULL,
  username VARCHAR(45) NOT NULL,
  contraseña VARCHAR(16) NOT NULL,
  ciudad VARCHAR(45) NOT NULL,
  creditcard VARCHAR(45) NOT NULL DEFAULT "none",
  TipoPago ENUM("Efectivo","Credito") DEFAULT "Credito"
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Orden (
  id INT AUTO_INCREMENT PRIMARY KEY,
  producto VARCHAR(100) NOT NULL,
  productoPrecio INT NOT NULL,
  fechaDePago DATETIME NOT NULL DEFAULT NOW(),
  estado ENUM("No Pagado","Pagado") DEFAULT "Pagado"
) ENGINE = InnoDB;

--SET SQL_MODE=@OLD_SQL_MODE;
--SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
--SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
