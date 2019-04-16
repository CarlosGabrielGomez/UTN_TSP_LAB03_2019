--1) Los clientes que no realizaron ningún pedido.

SELECT DISTINCT CLIENTES.ID,CLIENTES.APELLIDOS+','+CLIENTES.NOMBRES as 'DATOS'  FROM PEDIDOS  INNER JOIN
CLIENTES ON CLIENTES.ID=PEDIDOS.IDCLIENTE --ESTOS SON LOS QUE COMPRARON

 
 
 
SELECT   CLIENTES.APELLIDOS+','+CLIENTES.NOMBRES as 'DATOS',CLIENTES.ID  FROM CLIENTES WHERE CLIENTES.ID NOT IN(
SELECT DISTINCT CLIENTES.ID FROM PEDIDOS  INNER JOIN
CLIENTES ON CLIENTES.ID=PEDIDOS.IDCLIENTE
) --ESTOS SON LOS QIE NO COMPRARON



--2) Los materiales que no fueron utilizados en ningún producto.







--3) Los clientes que no realizaron ningún pedido en Febrero de 2019. 




SELECT CLIENTES.APELLIDOS+','+CLIENTES.NOMBRES as 'DATOS' ,PEDIDOS.FECHASOLICITUD AS 'MES SOLICITADO' FROM CLIENTES INNER JOIN 
PEDIDOS ON CLIENTES.ID=PEDIDOS.ID WHERE MONTH(PEDIDOS.FECHASOLICITUD)=3--ESTO DA MARZO

SELECT CLIENTES.APELLIDOS+','+CLIENTES.NOMBRES as 'DATOS' ,PEDIDOS.FECHASOLICITUD AS 'MES SOLICITADO' FROM CLIENTES INNER JOIN 
PEDIDOS ON CLIENTES.ID=PEDIDOS.ID WHERE MONTH(PEDIDOS.FECHASOLICITUD)<>3--ESTO DA DISTINTO DE MARZO


--4) Los productos que tengan un precio de venta mayor al precio de venta promedio. 




--5) Todos los datos de los productos cuyo precio de venta sea mayor a cualquier producto cuyo nombre de material sea "Pino".

--8) Por cada cliente, listar el apellido y nombre y la cantidad de pedidos realizados de productos que requieran seña y la cantidad de pedidos realizados de productos que no requieran seña.

SELECT CLIENTES.APELLIDOS,CLIENTES.NOMBRES,
COUNT(*)AS CANTSE 


--10) Apellido y nombres de los clientes que hayan realizado más pedidos de productos que requieren seña que pedidos que no requieren seña.

--13) El porcentaje de facturación de los pedidos realizados en Febrero de 2019 con respecto al total facturado.




/* LISTADO DE PRODUCTOS CON DESCRIPCION , LOS DIAS DE CONSTRUCCION QUE DEMORIA Y UN CAMPO QUE INDIQUE LA CANTIDAD DE
COLABOIRA


*/



/