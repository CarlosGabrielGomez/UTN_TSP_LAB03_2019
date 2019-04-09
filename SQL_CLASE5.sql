-1) La cantidad de productos registrados. (XLS)
USE FABRICA
GO

SELECT COUNT(PRODUCTOS.ID) AS 'TOTAL DE PRODUCTOS REGISTRADOS' FROM PRODUCTOS




--2) La cantidad de productos registrados que requieran se�a.


SELECT COUNT(PRODUCTOS.SE�A) AS 'PRODUCTOS CON SE�A' FROM PRODUCTOS WHERE PRODUCTOS.SE�A='TRUE'



--3) La cantidad de productos que registren un Precio Mayorista (XLS)


SELECT COUNT(PRODUCTOS.PVM) AS'CANT_PREC_MAYOR' FROM PRODUCTOS WHERE PRODUCTOS.PVM IS  NULL

SELECT COUNT(*) FROM PRODUCTOS WHERE PRODUCTOS.PVM IS NULL

--4) El total recaudado en concepto de pedidos (indistantemente del pago).

SELECT SUM(PEDIDOS.COSTO)AS'TOTAL RECAUDADO' FROM PEDIDOS

--5) El promedio de costos de env�o. 

SELECT AVG(ENVIOS.COSTO) AS 'PROMEDIO DE COSTOS DE ENVIO'FROM ENVIOS

--6) El promedio de recaudaci�n de pedidos que hayan sido pagados.

SELECT AVG(PEDIDOS.COSTO) AS'PROMEDIO RECAUDACION PEDIDOS PAGADOS' FROM PEDIDOS WHERE PEDIDOS.PAGO='TRUE'


--7) El precio m�s elevado de los productos.


SELECT MAX(PRODUCTOS.PRECIO) AS 'PRODUCTO MAS CARO' FROM PRODUCTOS
--8) El menor costo de los env�os.

SELECT MIN(ENVIOS.COSTO) AS 'ENVIO MAS BARATO ' FROM ENVIOS

--9) Por cada cliente, el apellido y nombre del cliente y la cantidad de pedidos realizados. (XLS)

SELECT CLIENTES.NOMBRES,CLIENTES.APELLIDOS ,COUNT (PEDIDOS.ID) AS 'PEDIDOS POR CLIENTES'
FROM CLIENTES INNER JOIN PEDIDOS ON PEDIDOS.IDCLIENTE=CLIENTES.ID GROUP BY  CLIENTES.NOMBRES,CLIENTES.APELLIDOS



--10) Por cada cliente, el total gastado en concepto de pedidos (indistantemente del pago).


SELECT CLIENTES.NOMBRES+','+CLIENTES.APELLIDOS AS 'DATOS CLIENTES ',SUM(PEDIDOS.COSTO) AS  'TOTAL GASTADO' FROM CLIENTES
RIGHT JOIN PEDIDOS ON CLIENTES.ID=PEDIDOS.IDCLIENTE GROUP BY CLIENTES.APELLIDOS,CLIENTES.NOMBRES 




--11) Por cada categor�a de producto la cantidad de productos que pertenecen a cada categor�a. Listar Nombre de la categor�a y cantidad.




SELECT  CATEGORIAS.NOMBRE, CATEGORIAS.ID,COUNT (CATEGORIAS.ID) AS 'CANT_X_CATEG' FROM  CATEGORIAS INNER JOIN PRODUCTOS ON 
CATEGORIAS.ID=PRODUCTOS.ID GROUP BY CATEGORIAS.NOMBRE,CATEGORIAS.ID







--12) Por cada material de producto la cantidad de productos que pertenecen a cada material. Listar Nombre del material y cantidad. Incluir en el listado aquellos materiales que no tienen productos asociados. (XLS)

SELECT *FROM PRODUCTOS

SELECT COUNT(*) FROM PRODUCTOS WHERE PRODUCTOS.IDCATEGORIA IS NOT NULL 

SELECT COUNT(PRODUCTOS.ID) FROM PRODUCTOS

SELECT MATERIALES.NOMBRE ,MATERIALES.ID,COUNT(PRODUCTOS.IDMATERIAL) AS' MATERIAL_X_PRODUCTOS' FROM PRODUCTOS  INNER JOIN  MATERIALES
 ON MATERIALES.ID=PRODUCTOS.IDMATERIAL GROUP BY MATERIALES.NOMBRE,MATERIALES.ID


--13) Por cada producto, la cantidad total recaudada en concepto de pedidos. Listar la descripci�n del producto y el total recaudado.

SELECT  TOP 5 PRODUCTOS.DESCRIPCION, SUM(PEDIDOS.COSTO) AS 'CANTI_TOTAL_RECA' FROM PRODUCTOS RIGHT JOIN PEDIDOS ON PRODUCTOS.ID=PEDIDOS.IDPRODUCTO 
GROUP BY PRODUCTOS.DESCRIPCION ORDER BY SUM(PEDIDOS.COSTO) DESC



--14) Por cada categor�a de producto el precio m�ximo del producto asociado a esa categor�a. Listar el nombre de la categor�a y el precio m�ximo encontrado.

SELECT CATEGORIAS.NOMBRE, MAX(PRODUCTOS.PRECIO) AS'PRECIO_MAX_X_CAT' FROM CATEGORIAS RIGHT JOIN PRODUCTOS ON
CATEGORIAS.ID=PRODUCTOS.IDCATEGORIA GROUP BY CATEGORIAS.NOMBRE ORDER BY MAX(PRODUCTOS.PRECIO) DESC


--15) Por cada pedido, listar el c�digo de pedido y la cantidad de colaboradores que trabajaron en �l.

SELECT PEDIDOS.ID AS'CODIGO DE PEDIDO', COUNT() 


--16) Por cada colaborador, listar la cantidad de veces que realiz� colaboraciones en pedidos. (XLS)



--17) Por cada colaborador, listar la cantidad de veces que realiz� colaboraciones en pedidos distintos.

--SELECT COLABORADORES.NOMBRES,COLABORADORES.APELLIDO,COUNT(*) AS CANTIDAD 

--18) Listar los nombres de las tareas que se hayan llevado a cabo m�s de dos veces entre todos los pedidos.

--19) Listar los clientes que no hayan realizado pedidos. Es decir, que hayan contabilizado cero pedidos. (XLS)

--20) Listar los clientes que tengan al menos un pedido sin pagar. Listar apellido y nombres.

--Bonus Tracks:

--21) Los nombre de categor�as de productos cuyo precio promedio de los productos asociados a la categor�a superen el valor de $5000.

--22) Por cada pedido, la cantidad de colaboraciones distintas que recibi�. Listar el IDPedido y la cantidad de colaboraciones.

--23) Por cada cliente, la cantidad de productos de cada material que compr�. Listar el apellido y nombre del cliente, el nombre del material y la cantidad de productos de ese material que compr�. (XLS)

--24) Apellido y nombres de los clientes que hayan pedido m�s de un producto del mismo material.

--25) Apellido y nombres del cliente que haya pedido m�s productos de un mismo material

--26) La cantidad de clientes distintos que compraron productos que no requieren se�a.