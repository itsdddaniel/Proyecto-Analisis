@author Daniel Arteaga, 
@date 02/03/2021
@version 1.0

# Analisis del proyecto
Analisis que se llevo acabo al momento de realizar el proyecto.

## Página Web

*Por definir*

# Base de Datos
Acontinuación se describen brevemente las tablas que estan creadas dentro de la base de datos.

## Producto:
- **PK** -> ID -> INT

        Llave Primaria de la tabla.

- Nombre -> VARCHAR(10)

        Nombre del producto.

- Precio -> FLOAT

        Precio del producto.

- Descripción -> TEXT

        Descripción del producto.

- Disponibilidad -> INT

        Producto existente.

- **FK** -> TiendaID -> INT

        Llave foranea que referencia la tabla Tienda.

## Categoria:
- **PK** -> ID -> INT

        Llave Primaria de la tabla.

- Nombre -> VARCHAR(10)

        Nombre de la categoria

- **FK** -> ProductoID -> INT

        Llave foranea que referencia la tabla producto.

## Tienda:
- **PK** -> ID -> INT

        Llave primaria de la tabla.

- Nombre -> VARCHAR(10)

        Nombre de la tienda.

- **FK** -> FabricaID -> INT

        Llave foranea que referencia la tabla Fabricante.

## Fabricante:
- **PK** -> ID -> INT

        Llave foranea de la tabla.

- Nombre -> VARCHAR(10)

        Nombre de la fabrica.

- Correo -> VARCHAR(10)

        Correo de la fabrica.

- Telefono -> VARCHAR(10)

        Telefono de la fabrica.

- **FK** -> DirecciónID -> INT

        Llave foranea que referencia la tabla Dirección.

## Dirección:
- **PK** -> ID -> INT

        Llave primaria de la tabla.

- Dirección -> VARCHAR(10) 

        Dirección de la tienda.

- **FK** VentaID -> INT

        Llave forenea que referencia la tabla Venta.

## Venta
- **PK** -> ID -> INT

        Llave primaria de la tabla.

- Fecha -> DATE

        Fecha en la que se compro el producto.

- **FK** -> ClienteID -> INT

        Llave forenea que referencia la tabla Cliente.

- **FK** -> FacturaID -> INT

        Llave foranea que referencia la tabla Factura.

## Factura
- **PK** -> ID -> INT

        Llave primaria de la tabla.

- Total -> INT

        Precio total a pagar.

## Cliente
- **PK** -> ID -> INT

        Llave primaria de la tabla.

- Nombre -> VARCHAR(10)

        Nombre del cliente.

- Apellido -> VARCHAR(10)

        Apellido del cliente.

- Dirección -> VARCHAR(10)

        Dirección en donde vive el cliente.

- Telefono -> VARCHAR(10)

        Telefono del cliente.
        

