USE Tienda;

INSERT INTO Marca(nombre,descripcion) VALUES

    ("Apple","1"),
    ("Samsung","2"),
    ("Apple","1"),
    ("Huawei","3"),
    ("Samsung","2")

;

INSERT INTO Categoria(nombre) VALUES

    ("Celulares"),
    ("Consolas"),
    ("Computadoras"),
    ("Impresoras"),
    ("Laptos")

;

INSERT INTO Categoria_Producto(id_categoria) VALUES

    (1),
    (2),
    (3),
    (4),
    (5)

;

INSERT INTO Novedad(tipoNovedad) VALUES

    (" "),
    (" "),
    (" "),
    (" "),
    (" ")

;

INSERT INTO Estado(tipoEstado) VALUES

    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia")

;

INSERT INTO Producto(id_producto,id_marca,id_estado,id_novedad,nombre,PrecioCompra,PrecioVenta,fechaEntrada,urlProducto,Descripcion) VALUES

    (1,1,1,1,"iPhone 6",500,1000.3,NOW(),"https://drive.google.com/uc?id=17vHt3qBz70TRabwCnmr6ya553CLRc2TL","Smartphone Apple"),
    (1,2,2,2,"Samsung Galaxy S10",765,7094.56,NOW(),"https://drive.google.com/uc?id=1nF7HA7o5bNjyK56FritGXr5EEpQPW4i-","Smartphone Samsung"),
    (1,3,3,3,"iPhone 8",800,4000.78,NOW(),"https://drive.google.com/uc?id=1051KQ0LwUfN77in3AsYSwSlI_PH0FbJU","Smartphone Apple"),
    (1,4,4,4,"Huawei Mate Pro",234,3045.45,NOW(),"https://drive.google.com/uc?id=1M9CO38K6pZOrFcB65LSsif8HWGG-USRf","Smartphone Huawei"),
    (1,5,5,5,"Samsung Galaxy Note S10",467,8500.58,NOW(),"https://drive.google.com/uc?id=1ykyrqAAw_nFxJ1iksXbQuvXnOWPOLTVM","Smartphone Samsung")

;
