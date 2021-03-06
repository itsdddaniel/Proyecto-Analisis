/**
 * ! Atender una página de HTML usando node.js
 * y de express.js para poder correr todos los
 * componentes de la página.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
const open = require('open');
const port = 8080; //Cambiar si el puerto esta ocupado.
var express = require('express'),
path = require('path'),
flash = require('express-flash'),
session = require('express-session'),
bodyParser = require('body-parser'),
app = express();

/**
 * ! Usando el modulo para de express session
 * se crea una session, esto para saber cuando 
 * el usuario esta logeado y cuando no lo esta.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.use(session(
{
  secret: "super-secret-key",
  key: "super-secret-cookie",
  resave: false,
  saveUninitialized: false
}));
app.use(flash());
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());
app.use(express.static(__dirname, + '/Codigo'));
app.set('view engine', 'ejs');

app.get('/', function(req, res) 
{
    res.render('index');
});

app.get('/', function(request, response) 
{
  response.sendFile(path.join(__dirname + '/views/indexTwo'));
});

/**
 * ! Usando el modulo para conectarse a mysql
 * usando todos los datos de autenticación para
 * poder hacer consultas a una base de datos.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
const mysql = require("mysql");
const { Router } = require('express');
const { stringify } = require('qs');
const db = mysql.createConnection
(
  {
    host: 'localhost',
    user: 'admin',
    password: 'admin',
    database: 'Tienda',
    multipleStatements: true
  }
  );
  
  db.connect((err) => 
  {
    if (err) 
    { 
      throw err; 
    }
    console.log("Conexión a la Base de Datos fue exitosa.");
    console.log("Para terminar la conexión: CTRL + C.");
  });
  
/**
 * ! Se define una ruta al momento de apretar
 * el botón de regresar.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/back', function(req,res,next)
{
  res.render("indexTwo");
});

/**
 * ! Se define una ruta al momento de regresar
 * a la página principal.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/mainpage',function(req,res,next)
{
  res.render("indexTwo");
});

/**
 * ! Se define una mensajes de exito cuando se
 * ingresa, se paga y se registra exitosamente.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/indexTwo',function(req,res,next)
{
  res.render("indexTwo", {sucessMessage: req.flash('sucessMessage'),checkoutSucess: req.flash('checkoutSucess'),registerSucess: req.flash('registerSucess')});
});

/**
 * ! Se define mensajes al momento de ingresar
 * datos erroneos y de exito cuando se sale de
 * la página.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/index',function(req,res,next)
{
  res.render("index",{errorMessage: req.flash('errorMessage'),logoutMessage: req.flash('logoutMessage')});
});

/**
 * ! Se define una ruta al momento de apretar
 * el botón de ingresar.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/loginPage',function(req,res,next)
{
  res.render("index");
});

/**
 * ! Se define una ruta al momento de apretar
 * el botón de registrar.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/registerPage',function(req,res,next)
{
  res.render("register");
});

/**
 * ! Se obtienen los datos de login y los compara
 * con lo que esta en la bd, de ser iguales ingresa
 * de lo contrario, no.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.post('/login', function(request, response) 
{
	var username = request.body.username;
	var password = request.body.password;
	if (username && password) 
  {
		db.query('SELECT * FROM Cliente WHERE username = ? AND contraseña = ?', [username, password], function(error, results, fields) 
    {
      if (results.length > 0) 
      {
        request.session.loggedin = true;
        request.session.username = username;
        request.flash('sucessMessage',"Se ha conectado existosamente.");
        response.redirect('indexTwo');
      } 
      else 
      {
        request.flash('errorMessage','Usuario y/o Contraseña incorrecta.');
        response.redirect("index");
      }			
      response.end();
		});
	} 
  else
  {
		response.send('Please enter Username and Password!');
		response.end();
	}
});

/**
 * ! Se define una ruta al momento de presionar
 * el botón de Salir y se termina la session.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/logout', function(req ,res)
{
  if(req.session.loggedin == true)
  {
    req.session.loggedin = false;
    req.flash('logoutMessage','Se ha desconectado satisfactoriamente.');
    res.redirect('index');
  }
});

/**
 * ! Se define una ruta al momento de presionar
 * el boton de Pagar, donde se ingresaran todos
 * los datos para pagar.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/checkout', function(req ,res)
{
    if(req.session.loggedin != true)
    {
      res.render("index");
    }
    else
    {
      res.render("payment");
    }
});

/**
 * ! Se encarga de obtener los datos que ingreso
 * el usuario para pagar y se comparan con los datos
 * que se uso al momento de registrarse a la pagina, 
 * de modo que si los datos son iguales el pago se realiza
 * de lo contrario no.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.post('/pay', function(req ,res)
{
    if(req.session.loggedin != true)
    {
      res.render("index");
    }
    else
    {
      let update = 'UPDATE Producto SET Existencia = ? WHERE nombre = ?;'
      var insert =  `INSERT INTO Orden (producto,productoPrecio) VALUES ?;`;
      var query = `UPDATE Cliente SET creditcard = ? WHERE dni = ?;`;
      var cardnumber = req.body.cardnumber;
      var dni = req.body.dni;
      var productName = JSON.parse(req.body.productName);
      let existance = productName.map(obj => obj.existance).toString();
      let name = productName.map(obj => obj.productName).toString();
      let result = productName.map(obj => [obj.productName, obj.productPrice]); 

      let finalExistance = parseInt(existance) - 1;

      db.query(query, [cardnumber,dni], function(err,data)
      {
        if(err)
        {
          console.log(err);
          res.render("indexTwo");
        }
        else
        {
          if(finalExistance < 0)
          {
            res.render("indexTwo");
          }
          else
          {
            db.query(update, [finalExistance,name], function(err,data)
            {
              if(err)
              {
                console.log(err);
                res.render("indexTwo");
              }
              else
              {
                db.query(insert, [result],function(err,data)
                {
                  if(err)
                  {
                    console.log(err);
                    res.render("indexTwo");
                  }
                  else
                  {
                    req.session.loggedin = true;
                    req.flash('checkoutSucess',"Se ha realizado la compra, gracias por preferirnos!");
                    res.redirect('indexTwo');
                  }
                });
              }
            });
          }
        }
      });
    }
});

/**
 * ! Se obtienen los datos de la pagina de registrar
 * para luego poder ingresarlos en una tabla en la bd.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.post('/register', function(req,res)
{
  var dni = req.body.dni;
  var firstname = req.body.firstname;
  var email = req.body.email;
  var phone = req.body.phone;
  var address = req.body.address;
  var city = req.body.city;
  var username = req.body.username;
  var password = req.body.password;
  var query = `INSERT INTO Cliente
              (dni,nombre,Email,Telefono,Direccion,username,contraseña,ciudad) 
              VALUES 
              (
                ?, ?, ?, ?, ?, ?, ?, ?
              );`;
  db.query(query, [dni,firstname,email,phone,address,username,password,city], function(err,data)
  {
    if(err)
    {
      console.log(err);
      res.render("index");
    }
    else
    {
      req.session.loggedin = true;
      req.session.username = username;
      req.flash('registerSucess',"Te has registrado satisfactoriamente, puedes empezar a navegar en nuestra tienda!");
      res.redirect('indexTwo');
    }
  });
});

/**
 * ! Se realiza un query a la base de datos al
 * para verificar si el usuario ha realizado
 * compras y pegarlas en una tabla HTML.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
app.get('/dashboard', function(req ,res)
{
    if(req.session.loggedin != true)
    {
      res.render("index");
    }
    else
    {
      db.query("SELECT * FROM `Orden`;", function(err,results)
      {
        if(err)
        {
          throw err;
        }
        if(results.length > 0)
        {
          app.set('view engine', 'ejs');
          app.set((__dirname, + '/views'));
          res.render('dashboard.ejs', {title: 'Productos Comprados', data: results}); 
        }
        else
        {
          app.set('view engine', 'ejs');
          app.set((__dirname, + '/views'));
          res.render('dashboard.ejs', {title: 'Productos Comprados'}); 
        }
      });
    }
});


app.listen(port); 
open(`http://localhost:${port}`);


/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los celulares.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    phoneNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/celulares/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('celulares/celulares.ejs', {data: phoneNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance}); 
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las computadoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    desktopNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/computadoras/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('computadoras/computadoras.ejs', {data: desktopNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los consolas.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    consoleNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/consolas/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('consolas/consolas.ejs', {data: consoleNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las laptops.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    laptopNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/laptops/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('laptops/laptops.ejs', {data: laptopNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las impresoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    printerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/impresoras/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('impresoras/impresoras.ejs', {data: printerNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los televisores.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    tvNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/televisores/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('televisores/televisores.ejs', {data: tvNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los parlantes.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    speakerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/parlantes/', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('parlantes/parlantes.ejs', {data: speakerNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las tablets.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    tabletNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/tablets', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('tablets/tablets.ejs', {data: tabletNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los accesorios.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    accesoriesNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/accesorios', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('accesorios/accesorios.ejs', {data: accesoriesNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las estufas.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    stoveNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/estufas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('estufas/estufas.ejs', {data: stoveNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las lavadoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    washingNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/lavadoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('lavadoras/lavadoras.ejs', {data: washingNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las refrigeradoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    refrigeratorNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/refrigeradoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('refrigeradoras/refrigeradoras.ejs', {data: refrigeratorNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los microondas.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    microwaveNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/microondas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('microondas/microondas.ejs', {data: microwaveNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las planchas.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    ironNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/planchas', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('planchas/planchas.ejs', {data: ironNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las licuadoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    blenderNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/licuadoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('licuadoras/licuadoras.ejs', {data: blenderNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los hornos.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    ovenNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/hornos', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('hornos/hornos.ejs', {data: ovenNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las cafeteras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    coffeeNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/cafeteras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('cafeteras/cafeteras.ejs', {data: coffeeNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán las aspiradoras.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    blowerNames[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/aspiradoras', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('aspiradoras/aspiradoras.ejs', {data: blowerNames, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance});
  });
});

/**
 * ! Hace un query a la base de datos donde 
 * los resultados serán los aires.
 * @author Daniel Arteaga, Jorge, Fredy, Bryan
 * @date 15/04/2021
 * @version 1.0
 */
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
  var existance = [];
  var length = Object.keys(results).length;
  for(var i = 0; i<length; i++)
  {
    airconditioning[i] = results[i].nombre;
    links[i] = results[i].urlProducto;
    details[i] = results[i].Descripcion;
    price[i] = results[i].PrecioVenta;
    existance[i] = results[i].Existencia;
  }
  app.get('/views/aire', function(req, res) 
  {
    app.set('view engine', 'ejs');
    app.set((__dirname, + '/views'));
    res.render('aire/aire.ejs', {data: airconditioning, data2: links, data3: details, data4: price, session: req.session.loggedin, data5: existance}); 
  });
});