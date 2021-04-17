USE Tienda;

INSERT INTO Marca(nombre,descripcion) VALUES

    ("Apple","Celular Apple"),
    ("Samsung","Celular Samsung"),
    ("Apple","Celular Apple"),
    ("Huawei","Celular Huawei"),
    ("Samsung","Celular Samsung"),

    ("Dell","Desktop Dell"),
    ("Dell","Desktop Dell"),
    ("Dell","Desktop Dell"),
    ("Dell","Desktop Dell"),
    ("Dell","Desktop Dell"),

    ("Nintendo","Consola Nintendo Switch"),
    ("Sony","Consola Playstation 5"),
    ("Microsoft","Consola XBOX One"),
    ("Nintendo","Consola Nintendo Wii U"),
    ("Sony","Consola Playstation 4"),

    ("Apple","Laptop Macbook Air"),
    ("Acer","Laptop Acer"),
    ("HP","Laptop HP"),
    ("HP","Laptop HP"),
    ("Acer","Laptop Acer"),

    ("Canon","Impresora Canon"),
    ("Canon","Impresora Canon"),
    ("HP","Impresora HP"),
    ("HP","Impresora HP"),
    ("HP","Impresora HP")

;

INSERT INTO Categoria(nombre) VALUES

    ("Celulares"),
    ("Computadoras"),
    ("Consolas"),
    ("Laptops"),
    ("Impresoras")

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
    (" "),

    (" "),
    (" "),
    (" "),
    (" "),
    (" "),

    (" "),
    (" "),
    (" "),
    (" "),
    (" "),

    (" "),
    (" "),
    (" "),
    (" "),
    (" "),

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
    ("Existencia"),

    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),

    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),

    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),
    ("Existencia"),

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
    (1,5,5,5,"Samsung Galaxy Note S10",467,8500.58,NOW(),"https://drive.google.com/uc?id=1ykyrqAAw_nFxJ1iksXbQuvXnOWPOLTVM","Smartphone Samsung"),

    (2,6,6,6,"Dell XPS 10",596,5000.12,NOW(),"","Desktop Dell"),
    (2,7,7,7,"Dell XPS 11",865,6000.12,NOW(),"","Desktop Dell"),
    (2,8,8,8,"Dell XPS 12",934,7000.12,NOW(),"","Desktop Dell"),
    (2,9,9,9,"Dell XPS 13",1000,8000.12,NOW(),"","Desktop Dell"),
    (2,10,10,10,"Dell XPS 14",1500,9000.12,NOW(),"","Desktop Dell"),

    (3,11,11,11,"Nintendo Switch",456,5000,NOW(),"","Consola Nintendo Switch"),
    (3,12,12,12,"Playstation 5",345,10000,NOW(),"","Consola Playstation 5"),
    (3,13,13,13,"XBOX One",678,4000,NOW(),"","Consola XBOX One"),
    (3,14,14,14,"Nintendo Wii U",290,2000,NOW(),"","Consola Nintendo Wii U"),
    (3,15,15,15,"Playstation 4",500,3000,NOW(),"","Consola Playstation 4"),


    (4,16,16,16,"Apple MacBook Air MQD32HN/A",345,8234.12,NOW(),"","Laptop Macbook"),
    (4,17,17,17,"Acer Aspire 7 A715-75G",457,6500.43,NOW(),"","Laptop Acer"),
    (4,18,18,18,"HP 15q-dy0007au",567,5900.23,NOW(),"","Laptop HP"),
    (4,19,19,19,"HP Pavilion Gaming 15-ec0101AX",689,4500.85,NOW(),"","Laptop HP"),
    (4,20,20,20,"Acer One 14 Z2-485",731,2000.00,NOW(),"","Laptop Acer"),

    (5,21,21,21,"Canon G4111 Wi-Fi",435,9000,NOW(),"","Impresora Canon"),
    (5,22,22,22,"Canon Pixma E402 USB",200,2000,NOW(),"","Impresora Canon"),
    (5,23,23,23,"HP Smart Tank 500 USB",300,6000,NOW(),"","Impresora HP"),
    (5,24,24,24,"HP Smart Tank 530 USB",400,9000,NOW(),"","Impresora HP"),
    (5,25,25,25,"HP Smart Tank 515 Wi-Fi",500,7000,NOW(),"","Impresora HP")

;
