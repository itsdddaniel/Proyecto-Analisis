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
  console.log("DB connection OK");
});

db.query("SELECT * FROM `Producto`", function (err, results) 
{
  if (err) 
  { 
    throw err; 
  }

  var phoneNames = []
  var links = []
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    phoneNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto
  }
  for(var j = 0; j<length; j++)
  {
    links[j] = results[j].urlProducto
  }
  app.get('/views/celulares', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/celulares'));
    res.render('celulares.ejs', {data: phoneNames, data2: links}); 
  });
  app.get('/views/consolas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set('views', path.join(__dirname, '/../views/consolas'));
    res.render('consolas.ejs', {data: "phoneNames"}); 
  });
});
