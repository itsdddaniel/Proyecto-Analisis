USE EmpresaElectronicos;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE Factura;
TRUNCATE Cliente;
TRUNCATE Venta;
TRUNCATE Dirección;
TRUNCATE Fabrica;
TRUNCATE Tienda;
TRUNCATE Producto;
TRUNCATE Categoria;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO Factura(int_total) VALUES

    (0)

;

INSERT INTO Cliente(vchar_nombre,vchar_apellido,vchar_dirección,vchar_telefono) VALUES

    ("Test","Test","Col. Kennedy","1234-5678")

;

INSERT INTO Venta(date_fecha,fk_clienteID,fk_facturaID) VALUES

    (NOW(),1,1)

;

INSERT INTO Dirección(vchar_dirección,fk_ventaID) VALUES

    ("Col. Las Palmas",1)

;

INSERT INTO Fabrica(vchar_nombre,vchar_correo,vchar_telefono,fk_direcciónID) VALUES

    ("Electronic INC","electronicinc@gmail.com","9876-5432",1)

;

INSERT INTO Tienda(vchar_nombre,fk_fabricaID) VALUES

    ("Diunsa",1)

;

INSERT INTO Producto(int_categoria,vchar_nombre,fl_precio,int_disponibilidad,tex_descripción,fk_tiendaID) VALUES

    (1,"iPhone 6",1000.3,5,"Smartphone Apple",1),
    (1,"Samsung Galaxy S10",7094.56,1,"Smartphone Samsung",1),
    (1,"iPhone 8",4000.78,2,"Smartphone Apple",1),
    (1,"Huawei Mate Pro",3045.45,3,"Smartphone Huawei",1),
    (1,"Samsung Galaxy Note S10",8500.58,4,"Smartphone Samsung",1),
    (1,"MotoG100",10000.58,3,"Smartphone Motorola",1),
    (1,"LG W41 Pro",7895.58,4,"Smartphone LG",1),
    (1,"Nokia 7.2",1150.58,4,"Smartphone Nokia",1),
    (1,"Razr 5G",9000.58,2,"Smartphone Motorola",1),
    (1,"One Plus 9 Pro",12435.58,4,"Smartphone One Plus",1),

    (2,"Dell XPS 10",5000.12,3,"Desktop Dell",1),
    (2,"Dell XPS 11",6000.12,3,"Desktop Dell",1),
    (2,"Dell XPS 12",7000.12,3,"Desktop Dell",1),
    (2,"Dell XPS 13",8000.12,3,"Desktop Dell",1),
    (2,"Dell XPS 14",9000.12,3,"Desktop Dell",1),

    (3,"Apple MacBook Air MQD32HN/A",8234.12,2,"Apple MacBook",1),
    (3,"Acer Aspire 7 A715-75G",6500.43,4,"Laptop Acer",1),
    (3,"HP 15q-dy0007au",5900.23,5,"Laptop HP",1),
    (3,"HP Pavilion Gaming 15-ec0101AX",4500.85,7,"Laptop HP",1),
    (3,"Acer One 14 Z2-485",2000.00,2,"Laptop Acer",1)
;

INSERT INTO Categoria(vchar_nombre,fk_productoID) VALUES

    ("Celulares",1),
    ("Computadoras",1),
    ("Laptops",1)

;