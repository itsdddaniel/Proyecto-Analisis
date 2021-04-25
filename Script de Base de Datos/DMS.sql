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
    ("Accesorios"),
    ("Estufa"),
    ("Lavadora"),
    ("Refrigeradoras"),
    ("Microondas"),
    ("Planchas"),
    ("Licuadoras"),
    ("Hornos"),
    ("Cafeteras"),
    ("Aspiradoras"),
    ("Aires Acondicionados")

;

INSERT INTO Categoria_Producto(id_producto,id_categoria) VALUES

    (3010,1), (3020,1), (3110,1), (3120,1), (3210,1),

    (3310,2), (3320,2), (3330,2), (3340,2), (3350,2),

    (3410,3), (3420,3), (3510,3), (3520,3), (3610,3),

    (3710,4), (3810,4), (3820,4), (3910,4), (3920,4),

    (4010,5), (4020,5), (4110,5), (4120,5), (4130,5),

    (2010,6), (2011,6), (2012,6), (2013,6), (2020,6), (2021,6),
    (2022,6), (2030,6), (2031,6), (2032,6), (2033,6), (1610,7),
    
    (1611,7), (1620,7), (1621,7),
    (1630,7), (1631,7), (1632,7),

    (1710,8), (1711,8), (1720,8),
    (1721,8), (1730,8), (1731,8),

    (1910,9),(1920,9),(1921,9),(1930,9), (1931,9),(1932,9),

    (0101,10), (0102,10), (0103,10), (0104,10), (0105,10),

    (0201,11), (0202,11),(0203,11), (0204,11), (0205,11),

    (0301,12), (0302,12), (0303,12), (0304,12), (0305,12),

    (0401,13), (0402,13), (0403,13), (0404,13), (0405,13),
	
    (0501,14), (0502,14), (0503,14), (0504,14), (0505,14),

    (0601,15), (0701,15), (0801,15), (0901,15), (0902,15),

    (1001,16), (1101,16), (1201,16), (1301,16), (1401,16),

    (1402,17), (1403,17), (1404,17), (1501,17), (2101,17),

    (2201,18), (2301,18), (2401,18), (2302,18), (2303,18),

    (2304,19), (2406,19), (2501,19), (2403,19),  (2601,19)

;

INSERT INTO Novedad(tipoNovedad) VALUES
    ("Normal"),
    ("Descuento")

;

INSERT INTO Estado(tipoEstado) VALUES

    ("Existencia"),
    ("Agotado")
;

INSERT INTO Cargo(nombre) VALUES
    ("Gerente"),
    ("Administrador"),
    ("Cajero"),
    ("Asistente de Ventas")
;

INSERT INTO Empleado(dni,nombre,Apellidos,Pais,Email,Telefono,Direccion,contraseña,id_Cargo) VALUES
    ("1803200012341","Josue","Cruz","Honduras","cruz.32@gmail.com","9812456","Res. Las Uvas","Cieloazul98",2),
    ("1203000012341","Maria","Avila","Honduras","mary15@gmail.com","33245164","Col. Miramontes","Computadora.17",1),
    ("0801199209215","Rosa","Quiñonez","Honduras","rosita25@gmail.com","99784512","Col Miraflorez","02145",4)
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

    (2010,1,1,1,"Samsung Smart TV",10000,15997.00,NOW(),"https://drive.google.com/uc?id=1sQ_6QNkTf9XYL4PZLss8AUcI7byv3-KD","Televisor Smart TV de 58'' 4K UHD"),
    (2011,1,1,1,"Samsung Smart TV",7000,11000.00,NOW(),"https://drive.google.com/uc?id=1Ldqsiw25vig0dC1q3APXIHzdPSaK7PeW",'Televisor Smart TV de 43" 4K UHD'),
    (2012,1,1,1,"Samsung Crystal TV",9000,13000.00,NOW(),"https://drive.google.com/uc?id=1qC9Euuu3SDjUPU2wS38jwrvR_JNkcHt0",'Televisor de 50" 4K UHD'),
    (2013,1,1,1,"Samsung TV",5000,8000.00,NOW(),"https://drive.google.com/uc?id=1ayCLNko1JTBpXXEYzwElgpTJJ16j4lnQ",'Televisor  de 32" HD'),
    (2020,1,1,1,"LG Smart TV",11000,15999.00,NOW(),"https://drive.google.com/uc?id=1NO-VJM99Z8pXa7jjgSzZRW_bX17tgIrh",'Televisor Smart TV de 54" 4K Ultra HD'),
    (2021,1,1,1,"LG Smart TV ThinQ",17000,22000.00,NOW(),"https://drive.google.com/uc?id=1Xlwo70eNu8SJwTN_qXEk0sNeUZTMg4EI",'Televisor Smart TV de 65" 4K'),
    (2022,1,1,1,"LG Smart TV ThinQ",11000,15000.00,NOW(),"https://drive.google.com/uc?id=1u-JjV-enW4F1QA7xHlQjKrr9WO1hKT0R",'Televisor Smart TV de 50" 4K Ultra HD'),
    (2030,1,1,1,"TLC Smart TV",4000,7599.00,NOW(),"https://drive.google.com/uc?id=1ErRyU7hkVUDzchUnXmWNARWpyEqlRyfu",'Televisor Smart TV de 40" FHD'),
    (2031,1,1,1,"TLC LED Smart TV",3500,5700.00,NOW(),"https://drive.google.com/uc?id=1Yp57tPah8iRSlv3fzUcf21r2nOmkNWB9",'Televisor Smart TV de 32" HD'),
    (2032,1,1,1,"TLC LED TV",6000,10000.00,NOW(),"https://drive.google.com/uc?id=1j6SLdDxuGtthxE1vHWkQL52bdnlOJBXs",'Televisor de 43" FHD'),
    (2033,1,1,1,"TLC LED TV",3000,6000.00,NOW(),"https://drive.google.com/uc?id=1MbkOsuCPP5wbzqeA8kkjeZjn_5aJ5Xf5",'Televisor de 32" HD'),

    (1610,1,1,1,"Bocina Vertical Sony",10000,15995.00,NOW(),"https://drive.google.com/uc?id=1hTPnTcPfkt7QNJuaVbvfczH0RjHIQwqH",'Con Bluetooth, lectura de CD,USB,DVD y HDMI'),
    (1611,1,1,1,"Bocina Vertical Sony",3000,5395.00,NOW(),"https://drive.google.com/uc?id=1etAZYY2PSXtkFvlqMm6bTNWoI4ZfVZG4",'Con Bluetooth, lectura de CD,USB,FM Y es Jet Bass Bouster'),
    (1620,1,1,1,"Bocina Vertical GigaParty",6000,8299.00,NOW(),"https://drive.google.com/uc?id=1uNMIH25NOwxkVq_P_LVU8_AY2cXoQyLJ",'Con Bluetooth, lectura de CD,USB tipo A,RCA, 3.5mm audio y una potencia de 500W'),
    (1621,1,1,1,"Bocina Vertical GigaParty",7500,10000.00,NOW(),"https://drive.google.com/uc?id=1CwdQq4nR_nNDJJEIU4UFLhr1fT1tYtQn",'Con Bluetooth, lectura de CD,USB tipo A,RCA, 3.5mm audio y una potencia de 1500W'),
    (1630,1,1,1,"Bocina LG XBOOM One Body",4000,6995.00,NOW(),"https://drive.google.com/uc?id=1zrh_bfm7YIaUF4SUeCPhumNVjzfC_kiF",'Con Bluetooth, lectura de USB con potencia de 500W'),
    (1631,1,1,1,"Bocina tipo Maletin",2000,4400.00,NOW(),"https://drive.google.com/uc?id=1etAZYY2PSXtkFvlqMm6bTNWoI4ZfVZG4",'Usa bateria , con Bluetooth y entrada a microfono, formato de lectura mp3,wma con potencia de 400W'),
    (1632,1,1,1,"Bocina Vertical",5000,8100.00,NOW(),"https://drive.google.com/uc?id=1C9vs7M55r19b19X0XzaPHj924M7IXmQO",'Con Bluetooth, lectura de USB con potencia de 1000W y efectos DJ'),

    (1710,1,1,1,"Galaxy Tab A7",4000,6100.00,NOW(),"https://drive.google.com/uc?id=15OmQrb0jD-PG1TKaed6CjuNlzljvTUgU",'De 10" con 32Gb de almacenamiento, wifi, Camara frontal de 5MP y trasera de 8MP y un SO Android Q'),
    (1711,1,1,1,"Galaxy Tab S7",18000,23000.00,NOW(),"https://drive.google.com/uc?id=1UXMnycMzqvNYhtPnN4URS0kh4w8tHEVW",'Con 128Gb de almacenamiento, wifi+LTE, Camara frontal de 8MP y trasera de 13MP+5MP y un SO Android 10'),
    (1720,1,1,1,"Apple iPad Pro",35000,45999.00,NOW(),"https://drive.google.com/uc?id=1noGBXYTstNTGO-Q9ZLrPzVXvbsGfw7f9",'De 12", Con 256Gb de almacenamiento, wifi+Celular, Camara frontal de 7MP y trasera de 12MP y un SO iPadOS'),
    (1721,1,1,1,"Apple iPad Air",17000,20599.00,NOW(),"https://drive.google.com/uc?id=15sAat44xlH-wXFSyakR6sq2BoBflSTOq",'De 10.5", Con 64Gb de almacenamiento, wifi+Celular Space Gray y un SO iOS'),
    (1730,1,1,1,"Lenovo Tab M7",1000,2995.00,NOW(),"https://drive.google.com/uc?id=1XTh60cFZgfa5uTKS07WR4gcGJV2zFC10",' Con 1Gb de almacenamiento, wifi+Bluetooth y un SO Android 7.0'),
    (1731,1,1,1,"Lenovo Yoga Samrt Tab",6500,10000.00,NOW(),"https://drive.google.com/uc?id=1yuLyhz0nbqHD-buVaE9i6t9xABmeKccJ",'De 10", Con 64Gb de almacenamiento, wifi+Bluetooth, 4GB de RAM y un SO Android 8.0'),

    (1910,1,1,1,"PS4 DUALShock 4",700,1390.00,NOW(),"https://drive.google.com/uc?id=185EUocqzNn7Dgw5YSUAXATX6nOrB3ELq",'Control de consola blanco'),
    (1920,1,1,1,"PC Gaming Mouse",300,600.00,NOW(),"https://drive.google.com/uc?id=1kuWJ5SsFRUs9b6mpVCAp3Wc1m6-YsDKz",'Mouse gaming Tdagger'),
    (1921,1,1,1,"PC Teclado Destroyer",900,1200.00,NOW(),"https://drive.google.com/uc?id=18INZErbeFTdmWEXyO1M0puc6AkGRQjgp",'Teclado gaming Tdagger'),
    (1930,1,1,1,"360 Media Remote",50,100.00,NOW(),"https://drive.google.com/uc?id=1-Pt6GYpPyNgqwFaey0gl91X-LD7aLU2d",'Control Remoto'),
    (1931,1,1,1,"360 HDMI",100,200.00,NOW(),"https://drive.google.com/uc?id=1kCKR0IIHBDbmHcS6DDev4yC87b_VS3Hg",'Cable tipo HDMI'),
    (1932,1,1,1,"Headset Recon 70X",900,1200.00,NOW(),"https://drive.google.com/uc?id=1uMX5y30WsaffiUFg--DGO2qupTwlYbeX",'Cascos turtle Beach'),

    (0101,1,1,1,"Estufa 4 QUEM Espiral Gris",7000,8899,NOW(),"https://drive.google.com/uc?id=1kXm0scyFIdRikSnzj6Fezea0_TOw-uxa","4 quemadores espirales, cubierta sellada, Easy Clean"),
    (0102,1,1,1,"Estufa 4 QUEM Espiral AC",9000,12999,NOW(),"https://drive.google.com/uc?id=1PbeTlCsBJtjsmumxJRZ9RhgVcPmDugyd","Estufa eléctrica General Electric de 30 pulgadas. Plato de acero."),
    (0103,1,1,1,"Estufa Ceramica Acero",12000,16999,NOW(),"https://drive.google.com/uc?id=18w6I8w1B166SSMcmSY9RgvTEsLaQK4FY","Estufa eléctrica de 30 pulgadas cerámica en acero. Horno de 5.9 piés."),
    (0104,1,1,1,"Estufa 4 QUEM Cerámica AC",9000,13999,NOW(),"https://drive.google.com/uc?id=1C04LfFvqd0GmqjYMadHPorzxhuK9I9Sf","Estufa eléctrica General Electrica de 30 pulgadas con superficie vitrocerámica"),
    (0105,1,1,1,"Estufa Cerámica Acero",13000,16499,NOW(),"https://drive.google.com/uc?id=1iAQkPNmSxp9n01vq3Y6AQNxK4-HLplmo","Estufa eléctrica de 30 pulgadas Frigidaire"),

    (0201,1,1,1,"Lavadora CF 22KG inverter DD Acero",19000,22999,NOW(),"https://drive.google.com/uc?id=1E3PqzgJ78bbnfCqaS5GkYCQbNqt4QkSO","Capacidad de 22Kg, inverted Direct Drive sin acoples o poleas"),
    (0202,1,1,1,"Lavadora 20KG Digital Inverter VRT",12000,15999,NOW(),"https://drive.google.com/uc?id=1aIQYiwaU1WZyH89xnsTyveOb3-5k66oX","Lavadora de carga frontal de 20KG Digital Inverter VRT Plus Blanca de Samsung"),
    (0203,1,1,1,"Lavadora 20KG Turbo Capacidad",7000,10499,NOW(),"https://drive.google.com/uc?id=10kWZB7eRos92z81HlaijLleQliBmSFIm","Lavadora de Carga Superior con Agitador, color blanco, 20Kg"),
    (0204,1,1,1,"Lavadora Impeller 22KG Turbo Capacidad B",9000,11699,NOW(),"https://drive.google.com/uc?id=1cBTuEOt6SIEx3s4pbkle4a9nQtcZZBoI","Lavadora Frigidaire de 22Kg blanca, tina de acero inoxidable"),
    (0205,1,1,1,"Lavadora 22KG Aqua Saver",9000,12999,NOW(),"https://drive.google.com/uc?id=1m3CeLTiIuCC_lLQ6ayR1NqWeWKB37qnS","Sistema de lavado por agitador. Tecnología Aqua Saver"),

    (0301,1,1,1,"Frigobar 4.5 Pies Acero",3000,4999,NOW(),"https://drive.google.com/uc?id=1r3jx97ZzWJAPEp-jcRkZdzlLsGHcycxG","Refrigerador Frigobar de 4.5 piés cúbicos de acero de Frigidaire"),
    (0302,1,1,1,"Refrigeradora SBS Inverter SL",15000,26999,NOW(),"https://drive.google.com/uc?id=1UwJQf0CfYx_RiQhpshQ94WpsMMGfyhRZ","Más grande por dentro y mismo tamaño por fuera. Diseño elegante"),
    (0303,1,1,1,"Regrigeradora FD 28 Pies Inverter Silver",19000,29999,NOW(),"https://drive.google.com/uc?id=13sq04XKCkJY_fUxXjnzgvMwAfjZSyqPR","Refrigeradora French Door de 28 pies Inverter Samsung"),
    (0304,1,1,1,"Refrigeradora FD 22 Pies Inverter Silver",16000,27999,NOW(),"https://drive.google.com/uc?id=1UKfoBYPO8UeAT9-lDWhSmXD8YRENpz_h","El refrigerador de tres puertas más espacioso de su clase."),
    (0305,1,1,1,"Refrigeradora FROST 2P Silver",3000,6999,NOW(),"https://drive.google.com/uc?id=1_nJ2OdZ2k5zDKZAI9r7dcwBEJSy5sj3I","Refrigerador de 6 pies Frost 2 puerta color plateado"),

    (0401,1,1,1,"Microondas Digital Silver",700,2699,NOW(),"https://drive.google.com/uc?id=1yN8R4moL9fL31ZScI031xUZhswRRJ09Q","Ofrece versatilidad con diferentes niveles de potencia"),
    (0402,1,1,1,"Microondas Inverter NeoChef Silver",2500,4199,NOW(),"https://drive.google.com/uc?id=1Uhxl9gTxYntxMbxr9DWEXWLv2OfYFngE","1.5 piés cúbicos, control preciso de temperatura y mayor potencia"),
    (0403,1,1,1,"Microondas Digital Superchef",700,1590,NOW(),"https://drive.google.com/uc?id=1Nc_7KDECG9MRfw9EmJLv1Tt2_ZvU-kMu","0.7 piés cúbicos, interfaz digital, marca super chef"),
    (0404,1,1,1,"Microondas Digital Samsung",2000,3690,NOW(),"https://drive.google.com/uc?id=1dQUdzInTipYNE3eSs6UXTm_BbD0zDSOO","Capacidad de 1 pie cúbico, pantalla LED, modo Eco"),
    (0405,1,1,1,"Microondas Digital Frigidaire",1100,2790,NOW(),"https://drive.google.com/uc?id=1ZH9V6ZaACjPbgR3uaQkF4T3EgKdX4dxF","Color plateado, menú para descongelar, menú para niños, potencia de 900w"),

    (0501,1,1,1,"Plancha de Vapor Cable Retractil",300,995,NOW(),"https://drive.google.com/uc?id=1Zik-OjL7suanw63PyaIje07wa-QDEzWu","Cordón retractil para mantener el orden"),
    (0502,1,1,1,"Plancha a Vapor Antiahderente Negra",200,550,NOW(),"https://drive.google.com/uc?id=1y6GZxFnFf5e21tm2hALF_QqqcmaiSsxE","Brinda años de servicio sobresaliente"),
    (0503,1,1,1,"Plancha de Vapor Blanco/Azul",85,150,NOW(),"https://drive.google.com/uc?id=1SMTVs4HGz7qwlrLA7JxRL-4ClVPB5I_O","Plancha a vapor para un mejor desempeño del planchado"),
    (0504,1,1,1,"Plancha Vapor Doble Capa Cerámica Rosa",600,895,NOW(),"https://drive.google.com/uc?id=1R4qEwnUEZ0BBKaEm9TBgy5yssCefPI_2","La suela de doble capa de cerámica brinda mejor cuidado de sus prendas"),
    (0505,1,1,1,"Plancha de vapor inalámbrica base recargable",800,1295,NOW(),"https://drive.google.com/uc?id=14xq090Br1kxGjj-DZc5OjUrQopGZHzlK","Brinda excelente planchado con máxima comodidad"),


    (0601,1,1,1,"Licuadora Atma L18415N",109.17,144.72,NOW(),"https://drive.google.com/uc?id=17sai3HUJqUHlXRXthSIaMKHGWFVLipTL","Capacidad de vaso :1.25 Lts Pica Hielo"),
    (0701,1,1,1,"Licuadora Moulinex Lm284858",168.82,192.94,NOW(),"https://drive.google.com/uc?id=1CVTkt3qBMvDYRSXloBOTDywdnP0e-IFW","Capacidad de vaso 2 Lts Pica Hielo no"),
    (0801,1,1,1,"Licuadora CUISINART Cpb300ar",241.18,289.19,NOW(),"https://drive.google.com/uc?id=18DnC28-gA2c4XV7BoSjkk2y86Zfj29dT","Capacidad de vaso : 0.9 Lts Pica Hielo sí"),
    (0901,1,1,1,"Licuadora KitchenAid KSB1585WH",578.41,626.89,NOW(),"https://drive.google.com/uc?id=1KwkDfonz-fQZOaco-vfIXsUJ8OVEHiWD","Capacidad de vaso : 1.75 Lts Pica Hielo : sí"),
    (0902,1,1,1,"Licuadora Black & Decker BLX10F ",144.72,173.42,NOW(),"https://drive.google.com/uc?id=12ZG4oKK39AmczcK_JDwcz4C05zYNGa3g","Capacidad de vaso : 1.5 Lts Pica Hielo : sí"),

    (1001,1,1,1,"Horno DOMEC MX60",2000.81,2411.82,NOW(),"https://drive.google.com/uc?id=1xRcHiEiG7Rh4u5BdNDb0LPhuPhwMCHKU","Potencia : 2380W"),
    (1101,1,1,1,"Horno Longvie H1500G",3000.81,4411.82,NOW(),"https://drive.google.com/uc?id=1HFxQ2Sk5z9LMl1W11NjFS3CRY0J4NRTg","Potencia : 2380W"),
    (1201,1,1,1,"Horno GE Appliances HG6035EVAI0",1808.97,2319.82,NOW(),"https://drive.google.com/uc?id=1sAI-IfAwhVdNY90DxIxAMOgBMat3bSBE","Potencia : 1200W"),
    (1301,1,1,1,"Horno eléctrico Axel AX-HCH45",1100.97,1319.82,NOW(),"https://drive.google.com/uc?id=1uKVtA4FP4w03KgRmsALmLZY2JTPaUlOd","Potencia : 1900W"),
    (1401,1,1,1,"Horno Eléctrico Atma HG4010N",602.97,1000.92,NOW(),"https://drive.google.com/uc?id=1nIaYXrs15LBkzXQKqK_dS_DK2KZhv5Is","Potencia : 1500W"),

    (1402,1,1,1,"Express Atma CA9197XN Metálico",602.97,723.95,NOW(),"https://drive.google.com/uc?id=1J5gzkd6JUjuIIiXxq4ZYO9Kw-W_Zz482","Potencia : 1250 W"),
    (1403,1,1,1,"Express Atma CA9197FF Metálico",500.97,625.95,NOW(),"https://drive.google.com/uc?id=1-3xYWnqZ2qitdgE7RyGYPU8iLGDtXYQk","Potencia : 1000 W"),
    (1404,1,1,1,"Cecotec Cafetera Express",602.97,723.95,NOW(),"https://drive.google.com/uc?id=19dc45uHVezjcnCzOWECKwyz7L8oSHGTv","Potencia : 1250 W"),
    (1501,1,1,1,"Cafetera Smartlife SL-CM9402",897.97,1025.95,NOW(),"https://drive.google.com/uc?id=1HVLzpqk4iOPLEKNXT70p1yXQp004lL1p","Capacidad: 1.5lts"),
    (2101,1,1,1,"Cafetera de Filtro Kanji KJH-CMF0800S02",600.97,725.95,NOW(),"https://drive.google.com/uc?id=1uDZ2fF7JnH-lihsDPbP2zP7ucY7z02yI","Capacidad: 1.8lts"),

    (2201,1,1,1,"Aspiradora Robótica Ecovacs Deboot N79W ",1447.17,1600.00,NOW(),"https://drive.google.com/uc?id=17euwMO3PW3NDZiSWYrXj_d94cmuCHLQ-","Marca : Ecovacs origen : Argentina"),
    (2301,1,1,1,"Aspiradora Industrial Karcher Nt38",2100.17,2300.00,NOW(),"https://drive.google.com/uc?id=1-zKhK9embr9opiAYf_gGD0sUT26ZNbw1","Marca : Karcher origen : China"),
    (2401,1,1,1,"Aspiradora Liliana LA592",1100.17,1900.00,NOW(),"https://drive.google.com/uc?id=1i6xVYL4tEtMmjrd7c0j0INIxW91VMRlv","Marca : Liliana origen : Argentina"),
    (2302,1,1,1,"Aspiradora Industrial Karcher Nt70",3100.17,4500.00,NOW(),"https://drive.google.com/uc?id=1kVw-Iiw90S_ykDm-PDKlkJzlEgRXqOis","Marca : Karcher origen : China"),
    (2303,1,1,1,"Aspiradora Fregadora Karcher FC 5",2100.17,3500.00,NOW(),"https://drive.google.com/uc?id=1zjjHXKvIfyJ2bQJU6yT2dFj5FR3OijLs","Marca : Karcher origen : Alemania"),

    (2304,1,1,1,"Aire Acondicionado Karcher FC 5",2100.17,3500.00,NOW(),"https://drive.google.com/uc?id=1fXK2x99ZOyO_IQdCRhhBBs6AN5DqTJ62","Marca : Karcher origen : Alemania"),
    (2406,1,1,1,"Split Inverter Sanyo 3300 W KCIN32HA3AN",2495.99,3100.99,NOW(),"https://drive.google.com/uc?id=1d2GSJwhVPci_lcf1Y5IVO6Bh8XAKPGxJ","Marca : inverter"),
    (2501,1,1,1,"Split Sanyo 3350 W KCS32HA3AN",3199.99,4200.99,NOW(),"https://drive.google.com/uc?id=1nAKs_zeG05mMElTOLx9VuuypkLTS6cim","Marca : Sanyo"),
    (2403,1,1,1,"Aire Acondicionado Split Frío/Calor BGH 3430 w Silent",3800.00,4200.00,NOW(),"https://drive.google.com/uc?id=1kq2JH9N0Z-m1o1XPpOb4-US1vIM0FfXV","Marca : inverter"),
    (2601,1,1,1,"Aire Acondicionado Split Samsung 3200 W Inverter AR12RSFQAWK",3600.00,4000.00,NOW(),"https://drive.google.com/uc?id=1PuistWjp83ZSU4CvnPgMicBM3_48bwWI","Samsung")
;