CREATE DATABASE campusbake;
USE campusbake;

CREATE TABLE cliente( 
    idCliente int primary key,
    nombreCliente varchar(50) not null,
    telefonoCliente varchar(15) not null,
    correoCliente varchar(100) not null,
    direccionCliente varchar(100)
);

CREATE TABLE productos(
    idProducto int primary key,
    nombreProducto varchar(50),
    tipo ENUM('bicicleta','repuesto','accesorio') not null,
    descripcion ENUM('montaña','ruta','urbana'),
    cantidad int not null,
    disponibilidad float,
    marca varchar(100) not null
);

CREATE TABLE Proveedores(
    idProveedor int primary key,
    nombreProveedor varchar(50) not null,
    telefonoProovedor varchar(15) not null,
    emailProveedor varchar(100) not null
);

CREATE TABLE ventas(
    idVenta int primary key,
    fecha date not null,
    valor decimal(10,2) not null,
    cantidad int not null,
    valorTotal decimal(10,2) not null,
    FOREIGN KEY (idProducto) REFERENCES productos(idProducto),
    FOREIGN KEY (idCliente) REFERENCES clientes(idClientes) 
);

CREATE TABLE compras(
    idCompra int primary key,
    valor decimal not null,
    cantidad int,
    fechaCompra date not null,
    FOREIGN KEY (idProducto) REFERENCES productos(idProducto) int not null,
    FOREIGN KEY (idProveedor) REFERENCES Proveedores(idProveedores) int not null
);   