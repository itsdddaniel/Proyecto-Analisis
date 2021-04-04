# *Descripción*

La aplicación es para un proveedor de productos electrónicos que opera tanto en un sitio web como una cadena de muchas tiendas físicas. Los ejemplos incluyen Diunsa, Lady Lee, entre otros. Para obtener más información sobre esta aplicación, debe pensar en cualquier experiencia que haya tenido al realizar compras tanto en línea como en la tienda, y explore sus sitios web.

En nuestra hipotética empresa, se ha decidido rediseñar una parte importante de la base de datos que subyace a las operaciones de la empresa. Desafortunadamente, el gerente asignado para solicitar propuestas de diseño de bases de datos no tiene muchos conocimientos de informática y no puede proporcionar una especificación muy detallada a nivel técnico Afortunadamente, usted puede hacerlo.

Aquí hay algunos puntos a considerar:
- Hay muchos productos diferentes, agrupados en una variedad de categorías (posiblemente superpuestas). Las agrupaciones pueden ser por tipo de producto (cámaras, teléfonos, etc.), por fabricante (Sony, Apple, etc.) o por otros medios (por ejemplo, una PC Gateway puede empaquetarse con un monitor Sony y una impresora HP y comercializarse como paquete).
<br>

- Algunos clientes tienen un contrato con la empresa y facturan sus compras a un número de cuenta. Se facturan mensualmente. Otros clientes son clientes poco frecuentes y pagan con tarjeta de crédito o débito. La información de la tarjeta se puede almacenar para los clientes en línea, pero no para los clientes de la tienda.
<br>

- Las ventas en línea deben enviarse a un remitente. La empresa necesita almacenar el número de seguimiento de la empresa de envío para poder responder a las consultas de los clientes.
<br>

- El inventario debe ser preciso tanto en las tiendas como en los almacenes que se utilizan para reabastecer las tiendas y para enviar a los clientes en línea. Cuando el inventario es bajo, se debe enviar un nuevo pedido al fabricante y se debe incluir en la base de datos. Cuando llegan las mercancías, el inventario debe actualizarse y los nuevos pedidos deben marcarse como completados
<br>

Los datos de ventas son importantes para la planificación corporativa. Los especialistas en mercadeo pueden querer ver los datos de ventas por período de tiempo, producto, grupo de productos, temporada, región (para tiendas), etc.
<br>

El proyecto debe cumplir los siguientes requisitos:
1. Identificar las funciones principales.
2. Documentar cada función. Diagramar el proceso utilizado en cada función, las entradasutilizadas y las salidas generadas. Debe identificar otros datos utilizados por el sistema.
3. Modelar el sistema utilizando la metodología Análisis y Diseño Orientado a Objetos.
4. Analizar los modelos y proponer un nuevo sistema.
5. Transformar los modelos en un diseño detallado.

# *Entregables del proyecto*
Analizar los modelos de proceso, datos y comportamiento. Identificar nuevos procesos, datos y flujos de datos para el nuevo sistema. Preparar el nuevo modelo lógico que incluye. (Valor 30 puntos oro, 4 puntos oro c/u excepto el inciso 7 cuyo valor es 6 puntos oro, 2 puntos oro c/u):
<br>

1. Una breve descripción de la funcionalidad.
2. Un diagrama de contexto.
3. Modelo de proceso: diagramas de casos de uso para procesos comerciales críticos.
4. Modelo de datos: un diagrama de clases.
5. Modelo de comportamiento de objetos: un diagrama de secuencia para los casos de uso.
6. Documentación de todos los datos utilizados.
7. Transformación del modelo lógico en un diseño detallado. El diseño debe incluir:

        a. Diseño de la base de datos.
        b. Diseño de objetos: debe diseñar los atributos y métodos. Especificar los algoritmos para los métodos utilizando inglés estructurado.
        c. Controles. Debe identificar al menos cinco mecanismos de control para prevenir/detectar posibles errores que puedan ocurrir en el sistema