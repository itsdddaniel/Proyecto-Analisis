/**
 * ! Atender una página de HTML usando node.js
 * y de express.js para poder correr todos los
 * componentes de la página.
 * @author 
 * @date 15/04/2021
 * @version 1.0
 */
var express = require('express'),
    path = require('path'),
    app = express();

app.use(express.static(path.join(__dirname, '/../')));

app.get('/', function(req, res) {
    res.redirect('index.html');
});

app.listen(8080);

/**
 * ! Usando el modulo para conectarse a mysql
 * usando todos los datos de autenticación para
 * poder hacer consultas a una base de datos.
 * @author 
 * @date 15/04/2021
 * @version 1.0
 */
const mysql = require("mysql");
const db = mysql.createConnection
(
  {
    host: 'localhost',
    user: 'admin',
    password: 'admin',
    database: 'Tienda'
  }
);

db.connect((err) => 
{
  if (err) 
  { 
    throw err; 
  }
  console.log("Conexión a la Base de Datos fue exitosa.");
  console.log("En el navegador abrir: http://localhost:*puerto*");
  console.log("Para terminar la conexión: CTRL + C.");
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 1;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var phoneNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    phoneNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/celulares', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/celulares'));
    res.render('celulares.ejs', {data: phoneNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 2;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var desktopNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    desktopNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/computadoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/computadoras'));
    res.render('computadoras.ejs', {data: desktopNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 3;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var consoleNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    consoleNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;

  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/consolas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/consolas'));
    res.render('consolas.ejs', {data: consoleNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 4;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var laptopNames = []
  var links = []
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    laptopNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/laptops', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/laptops'));
    res.render('laptops.ejs', {data: laptopNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 5;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var printerNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    printerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/impresoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/impresoras'));
    res.render('impresoras.ejs', {data: printerNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 6;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var tvNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    tvNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/televisores', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/televisores'));
    res.render('televisores.ejs', {data: tvNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 7;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var speakerNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    speakerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/parlantes', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/parlantes'));
    res.render('parlantes.ejs', {data: speakerNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 8;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var tabletNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    tabletNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/tablets', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/tablets'));
    res.render('tablets.ejs', {data: tabletNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 9;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var accesoriesNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    accesoriesNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/accesorios', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/accesorios'));
    res.render('accesorios.ejs', {data: accesoriesNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 10;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var stoveNames = []
  var links = []
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    stoveNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/estufas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/estufas'));
    res.render('estufas.ejs', {data: stoveNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 11;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var washingNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    washingNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/lavadoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/lavadoras'));
    res.render('lavadoras.ejs', {data: washingNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 12;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var refrigeratorNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    refrigeratorNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/refrigeradoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/refrigeradoras'));
    res.render('refrigeradoras.ejs', {data: refrigeratorNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 13;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var microwaveNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    microwaveNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/microondas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/microondas'));
    res.render('microondas.ejs', {data: microwaveNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 14;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var ironNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    ironNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/planchas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/planchas'));
    res.render('planchas.ejs', {data: ironNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 15;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var blenderNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    blenderNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/licuadoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/licuadoras'));
    res.render('licuadoras.ejs', {data: blenderNames, data2: links, data3: details, data4: price}); 
  });
});


db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 16;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var ovenNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    ovenNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/hornos', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/hornos'));
    res.render('hornos.ejs', {data: ovenNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 17;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var coffeeNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    coffeeNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/cafeteras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/cafeteras'));
    res.render('cafeteras.ejs', {data: coffeeNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 18;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var blowerNames = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    blowerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/aspiradoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/aspiradoras'));
    res.render('aspiradoras.ejs', {data: blowerNames, data2: links, data3: details, data4: price}); 
  });
});

db.query("SELECT * FROM `Categoria_Producto` JOIN Producto ON Producto.id_producto = Categoria_Producto.id_producto WHERE id_categoria = 19;", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var airconditioning = [];
  var links = [];
  var details = [];
  var price = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    airconditioning[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/aspiradoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/aspiradoras'));
    res.render('aspiradoras.ejs', {data: airconditioning, data2: links, data3: details, data4: price}); 
  });
});