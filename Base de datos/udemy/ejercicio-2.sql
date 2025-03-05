create table ventas (

venta_id int primary key, -- id de tabla
fecha_venta datetime, -- fecha de las ventas
monto_total decimal(10,2), -- Monto de ventas
metodo_pago varchar(20), -- Metodo pago
cliente_id int -- Id de cliente

);

