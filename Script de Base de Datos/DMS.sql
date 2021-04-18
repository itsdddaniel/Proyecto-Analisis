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
    ("Impresoras"),
    ("Televisores"),
    ("Parlantes"),
    ("Tablets"),
    ("Accesorios")

;

INSERT INTO Categoria_Producto(id_producto,id_categoria) VALUES

    (3010,1),
    (3020,1),
    (3110,1),
    (3120,1),
    (3210,1),

    (3310,2),
    (3320,2),
    (3330,2),
    (3340,2),
    (3350,2),

    (3410,3),
    (3420,3),
    (3510,3),
    (3520,3),
    (3610,3),

    (3710,4),
    (3810,4),
    (3820,4),
    (3910,4),
    (3920,4),

    (4010,5),
    (4020,5),
    (4110,5),
    (4120,5),
    (4130,5),

    (2010,6),
    (2011,6),
    (2012,6),
    (2013,6),
    (2020,6),
    (2021,6),
    (2022,6),
    (2030,6),
    (2031,6),
    (2032,6),
    (2033,6),

    (1610,7),
    (1611,7),
    (1620,7),
    (1621,7),
    (1630,7),
    (1631,7),
    (1632,7),

    (1710,8),
    (1711,8),
    (1720,8),
    (1721,8),
    (1730,8),
    (1731,8),

    (1910,9),
    (1920,9),
    (1921,9),
    (1930,9),
    (1931,9),
    (1932,9)

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
    ("Agotado")
    

;

INSERT INTO Producto(id_producto,id_marca,id_estado,id_novedad,nombre,PrecioCompra,PrecioVenta,fechaEntrada,urlProducto,Descripcion) VALUES

    (3010,1,1,1,"iPhone 6",500,1000.3,NOW(),"https://drive.google.com/uc?id=17vHt3qBz70TRabwCnmr6ya553CLRc2TL","Smartphone Apple"),
    (3020,1,1,1,"iPhone 8",800,4000.78,NOW(),"https://drive.google.com/uc?id=1051KQ0LwUfN77in3AsYSwSlI_PH0FbJU","Smartphone Apple"),
    (3110,1,1,1,"Samsung Galaxy S10",765,7094.56,NOW(),"https://drive.google.com/uc?id=1nF7HA7o5bNjyK56FritGXr5EEpQPW4i-","Smartphone Samsung"),
    (3120,1,1,1,"Samsung Galaxy Note S10",467,8500.58,NOW(),"https://drive.google.com/uc?id=1ykyrqAAw_nFxJ1iksXbQuvXnOWPOLTVM","Smartphone Samsung"),
    (3210,1,1,1,"Huawei Mate Pro",234,3045.45,NOW(),"https://drive.google.com/uc?id=1M9CO38K6pZOrFcB65LSsif8HWGG-USRf","Smartphone Huawei"),

    (3310,1,1,1,"Dell XPS 10",596,5000.12,NOW(),"https://drive.google.com/uc?id=1RIgap62OsWQayYR5h7Z0XS4F_VGgFNax","Desktop Dell"),
    (3320,1,1,1,"Dell XPS 11",865,6000.12,NOW(),"https://drive.google.com/uc?id=1RIgap62OsWQayYR5h7Z0XS4F_VGgFNax","Desktop Dell"),
    (3330,1,1,1,"Dell XPS 12",934,7000.12,NOW(),"https://drive.google.com/uc?id=1RIgap62OsWQayYR5h7Z0XS4F_VGgFNax","Desktop Dell"),
    (3340,1,1,1,"Dell XPS 13",1000,8000.12,NOW(),"https://drive.google.com/uc?id=1RIgap62OsWQayYR5h7Z0XS4F_VGgFNax","Desktop Dell"),
    (3350,1,1,1,"Dell XPS 14",1500,9000.12,NOW(),"https://drive.google.com/uc?id=1RIgap62OsWQayYR5h7Z0XS4F_VGgFNax","Desktop Dell"),

    (3410,1,1,1,"Nintendo Switch",456,5000,NOW(),"https://drive.google.com/uc?id=1Z2OdBBFzAuGMV5noqX0gKPsJkXTOWzmu","Consola Nintendo Switch"),
    (3420,1,1,1,"Nintendo Wii U",290,2000,NOW(),"https://drive.google.com/uc?id=1C6nzi09BKbBtntbCzFrQbh-Qwrc2vmk2","Consola Nintendo Wii U"),
    (3510,1,1,1,"Playstation 4",500,3000,NOW(),"https://drive.google.com/uc?id=1QgCpMe-YmUvFSSqSvwIyHfmAYPAwhkPU","Consola Playstation 4"),
    (3520,1,1,1,"Playstation 5",345,10000,NOW(),"https://drive.google.com/uc?id=1UvXBWO5IgQoKArQofcPKYGKL8CHKgVAG","Consola Playstation 5"),
    (3610,1,1,1,"XBOX One",678,4000,NOW(),"https://drive.google.com/uc?id=1owp7zHLpa95cn6GmJkvx41sw04uZ0qZE","Consola XBOX One"),

    (3710,1,1,1,"Apple MacBook Air MQD32HN/A",345,8234.12,NOW(),"https://drive.google.com/uc?id=141vYJR_rQMEmEGGEGgRP3OwnEHq5DB3u","Laptop Macbook"),
    (3810,1,1,1,"Acer Aspire 7 A715-75G",457,6500.43,NOW(),"https://drive.google.com/uc?id=1EafQ22qYj6wkNLs0PbFhk0UdmCxAlx0H","Laptop Acer"),
    (3820,1,1,1,"Acer One 14 Z2-485",731,2000.00,NOW(),"https://drive.google.com/uc?id=1R6xWLTAwuoqJoHpxFzFr8UgxyRq0H40R","Laptop Acer"),
    (3910,1,1,1,"HP 15q-dy0007au",567,5900.23,NOW(),"https://drive.google.com/uc?id=1d9_PDeJQOm8LvA6nX1fw6daYttT-Vll8","Laptop HP"),
    (3920,1,1,1,"HP Pavilion Gaming 15-ec0101AX",689,4500.85,NOW(),"https://drive.google.com/uc?id=1qf4gFi9KE6-xjJwA4rW7oAKf1SxX_plx","Laptop HP"),

    (4010,1,1,1,"Canon G4111 Wi-Fi",435,9000,NOW(),"https://drive.google.com/uc?id=11-S3tdfzH91ji3cSYtnYDuUKWmZmTxy7","Impresora Canon"),
    (4020,1,1,1,"Canon Pixma E402 USB",200,2000,NOW(),"https://drive.google.com/uc?id=1lgLOFEw7oPBO74FrOV_Lt0D3gULfc6z1","Impresora Canon"),
    (4110,1,1,1,"HP Smart Tank 500 USB",300,6000,NOW(),"https://drive.google.com/uc?id=1WiVwqDxHSdVtiKITTY6vfEhNtxCtyiPJ","Impresora HP"),
    (4120,1,1,1,"HP Smart Tank 530 USB",400,9000,NOW(),"https://drive.google.com/uc?id=1FZ67fFTJhEMb5fSnFATUCObPR4qmJrnT","Impresora HP"),
    (4130,1,1,1,"HP Smart Tank 515 Wi-Fi",500,7000,NOW(),"https://drive.google.com/uc?id=1XfqIBVdmmzPujxRhFwl2Xm_fYQpQP059","Impresora HP"),

    (2010,1,1,1,"Samsung Smart TV",10000,15997.00,NOW(),"","Televisor Smart TV de 58'' 4K UHD"),
    (2011,1,1,1,"Samsung Smart TV",7000,11000.00,NOW(),"",'Televisor Smart TV de 43" 4K UHD'),
    (2012,1,1,1,"Samsung Crystal TV",9000,13000.00,NOW(),"",'Televisor de 50" 4K UHD'),
    (2013,1,1,1,"Samsung TV",5000,8000.00,NOW(),"",'Televisor  de 32" HD'),
    (2020,1,1,1,"LG Smart TV",11000,15999.00,NOW(),"",'Televisor Smart TV de 54" 4K Ultra HD'),
    (2021,1,1,1,"LG Smart TV ThinQ",17000,22000.00,NOW(),"",'Televisor Smart TV de 65" 4K'),
    (2022,1,1,1,"LG Smart TV ThinQ",11000,15000.00,NOW(),"",'Televisor Smart TV de 50" 4K Ultra HD'),
    (2030,1,1,1,"TLC Smart TV",4000,7599.00,NOW(),"",'Televisor Smart TV de 40" FHD'),
    (2031,1,1,1,"TLC LED Smart TV",3500,5700.00,NOW(),"",'Televisor Smart TV de 32" HD'),
    (2032,1,1,1,"TLC LED TV",6000,10000.00,NOW(),"",'Televisor de 43" FHD'),
    (2033,1,1,1,"TLC LED TV",3000,6000.00,NOW(),"",'Televisor de 32" HD'),

    (1610,1,1,1,"Bocina Vertical Sony",10000,15995.00,NOW(),"",'Con Bluetooth, lectura de CD,USB,DVD y HDMI'),
    (1611,1,1,1,"Bocina Vertical Sony",3000,5395.00,NOW(),"",'Con Bluetooth, lectura de CD,USB,FM Y es Jet Bass Bouster'),
    (1620,1,1,1,"Bocina Vertical GigaParty",6000,8299.00,NOW(),"",'Con Bluetooth, lectura de CD,USB tipo A,RCA, 3.5mm audio y una potencia de 500W'),
    (1621,1,1,1,"Bocina Vertical GigaParty",7500,10000.00,NOW(),"",'Con Bluetooth, lectura de CD,USB tipo A,RCA, 3.5mm audio y una potencia de 1500W'),
    (1630,1,1,1,"Bocina LG XBOOM One Body",4000,6995.00,NOW(),"",'Con Bluetooth, lectura de USB con potencia de 500W'),
    (1631,1,1,1,"Bocina tipo Maletin",2000,4400.00,NOW(),"",'Usa bateria , con Bluetooth y entrada a microfono, formato de lectura mp3,wma con potencia de 400W'),
    (1632,1,1,1,"Bocina Vertical",5000,8100.00,NOW(),"",'Con Bluetooth, lectura de USB con potencia de 1000W y efectos DJ'),

    (1710,1,1,1,"Galaxy Tab A7",4000,6100.00,NOW(),"",'De 10" con 32Gb de almacenamiento, wifi, Camara frontal de 5MP y trasera de 8MP y un SO Android Q'),
    (1711,1,1,1,"Galaxy Tab S7",18000,23000.00,NOW(),"",'Con 128Gb de almacenamiento, wifi+LTE, Camara frontal de 8MP y trasera de 13MP+5MP y un SO Android 10'),
    (1720,1,1,1,"Apple iPad Pro",35000,45999.00,NOW(),"",'De 12", Con 256Gb de almacenamiento, wifi+Celular, Camara frontal de 7MP y trasera de 12MP y un SO iPadOS'),
    (1721,1,1,1,"Apple iPad Air",17000,20599.00,NOW(),"",'De 10.5", Con 64Gb de almacenamiento, wifi+Celular Space Gray y un SO iOS'),
    (1730,1,1,1,"Lenovo Tab M7",1000,2995.00,NOW(),"",' Con 1Gb de almacenamiento, wifi+Bluetooth y un SO Android 7.0'),
    (1731,1,1,1,"Lenovo Yoga Samrt Tab",6500,10000.00,NOW(),"",'De 10", Con 64Gb de almacenamiento, wifi+Bluetooth, 4GB de RAM y un SO Android 8.0'),

    (1910,1,1,1,"PS4 DUALShock 4",700,1390.00,NOW(),"",'Control de consola blanco'),
    (1920,1,1,1,"PC Gaming Mouse",300,600.00,NOW(),"",'Mouse gaming Tdagger'),
    (1921,1,1,1,"PC Teclado Destroyer",900,1200.00,NOW(),"",'Teclado gaming Tdagger'),
    (1930,1,1,1,"360 Media Remote",50,100.00,NOW(),"",'Control Remoto'),
    (1931,1,1,1,"360 HDMI",100,200.00,NOW(),"",'Cable tipo HDMI'),
    (1932,1,1,1,"Headset Recon 70X",900,1200.00,NOW(),"",'Cascos turtle Beach')
;

SELECT * FROM Categoria_Producto JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 1;