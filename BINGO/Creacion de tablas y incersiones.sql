-------------------------------------------------------------------------------------------
------------------------CREACION Y INGRESO DE DATOS EN LAS TABLAS---------------------------
--------------------------------------------------------------------------------------------

/*****************************************
*******CREAR TABLA DE ADMINISTRADOR*******
******************************************/

CREATE TABLE ADMINISTRADOR(
 ADMI_ID INTEGER PRIMARY KEY,
 ADMI_CEDULA INTEGER,
 ADMI_NOMBRE VARCHAR (20),
 ADMI_APELLIDO VARCHAR(20),
 ADMI_CELULAR INTEGER
);

/********************************************
*******INSERTAR DATOS DE ADMINISTRADOR*******
*********************************************/

INSERT INTO administrador (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
(001,1315698526, 'STEFANY' , ' PICO MENDOZA ', 0988682451);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (002,1315698526 ,'JACQUELINE', 'ALCIVAR MENDOZA', 0988682451);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (003,1379354120 ,'LUCIA', 'DELGADO MANTUANO', 0991843520);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (004,1387565254,'PEDRO', 'MOREIRA CEVALLOS', 0943118520);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (005,1325547893 ,'EDUARDO', 'ZAMBRANO CEDEÑO', 0978463200);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (006,1376008610 ,'TONY', 'ANCHUNDIA MURILLO', 0984521884);
INSERT INTO ADMINISTRADOR (ADMI_ID, ADMI_CEDULA, ADMI_NOMBRE, ADMI_APELLIDO, ADMI_CELULAR) VALUES
 (007,1318761054 ,'YULETZI', 'ALVAREZ RODRIGUEZ', 0987325656);

/*****************************************
***********CREAR TABLA DE BINGO***********
******************************************/

CREATE TABLE BINGO(
BIN_NUMERO INTEGER PRIMARY KEY,
BIN_DATE DATE,
ADMI_ID INTEGER NULL, 
CONSTRAINT ADMI_ID foreign key (ADMI_ID)
REFERENCES ADMINISTRADOR(ADMI_ID) ON UPDATE CASCADE
);

/********************************************
***********INSERTAR DATOS DE BINGO***********
*********************************************/

insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0001,'10/07/2020', 001);
insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0002,'10/08/2020', 004);
insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0003,'10/09/2020', 006);
 insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0004,'10/10/2020', 004);
 insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0005,'10/11/2020', 002);
 insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0006,'10/12/2020', 005);
  insert into BINGO (BIN_NUMERO, BIN_DATE, ADMI_ID) VALUES
 (0007,'10/01/2021', 007); 


/*****************************************
**********CREAR TABLA DE USUARIO**********
******************************************/

CREATE TABLE USUARIO(
 CLI_CODIGO INT PRIMARY KEY,
 CLI_NOMBRE VARCHAR(20),
 CLI_APELLIDO VARCHAR(20),
 CLI_CEDULA INTEGER,
 CLI_DIRECCION VARCHAR(30),
 CLI_FECHA_NACIMIENTO DATE,
 BIN_NUMERO INTEGER NULL,
 CONSTRAINT BIN_NUMERO foreign key (BIN_NUMERO)
 REFERENCES BINGO(BIN_NUMERO) ON UPDATE CASCADE
);

/********************************************
**********INSERTAR DATOS DE USUARIO**********
*********************************************/

INSERT INTO usuario (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
(1, 'JOSSELYN', 'MACIAS', 1350696397, 'ALTAMIRA FRENTE A LA ESCUELA','2000-08-20', 1);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (002, 'BRYAN', 'ARTEAGA CEDEÑO', 1379954265, 'CUBA', '17/09/1997', 0003);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (003, 'VICTORIA', 'CEDEÑO MACIAS', 1302587998, 'ALTAGRACIA', '01/12/1998', 0001);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (004, ' MANUEL', 'BAUTISTA ENCINA', 1348762554, 'VIA JARAMIJO', '17/10/2000', 0002);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (005, 'GENARO', 'LOPEZ GENARO', 1356877230, 'VILLAMARINA', '15/07/1995', 0003);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (006, 'ROCIO', 'ALONZO IBARRA', 1378625120, 'AV 4 DE NOVIEMBRE', '26/08/1999', 0005);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (007, 'ROSARIO', 'MARCIAL SALGADO', 1397521200, 'FRENTE AL PARQUE DEL CENTRO', '20/01/2000', 0007);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (008, 'JUAN', 'PEREZ ZAMORA', 1316587423, 'DIAGONAL A LA FERRETERIA ', '30/05/2001', 0004);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (009, 'LUIS', 'SOSA INTRIAGO', 1379121215, 'CALLE 38 AV 104', '01/01/1992', 0002);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (010, 'PEDRO', 'RUIZ ZAMORA', 1358798524, 'AV 108 CALLE 112 ESQUINA', '20/11/2000', 0004);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (011, 'LEONEL', 'MONTOYA CEDEÑO', 1310259785, 'LOS ESTEROS FRENTE AL TIA', '17/02/1997', 0006);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (012, 'EDUARDO', 'MOSQUERA RODRIGUEZ', 1368751221, 'VIA SAN MATEO', '21/06/1989', 0001);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (013, 'PATRICIO', 'GUITIERREZ RIVERA', 1305498575, 'CIUDADELA UNIVERSITARIA', '08/12/1990', 0007);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (014, 'MARIO', 'FREIRE CISNEROS', 1305487921, 'EL PALMAR FRENTE AL TERMINAR', '16/06/1994', 0005);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (015, 'MILTON', 'LUCAS CHECA', 1316468852, 'ALTAMIRA', '28/04/2000', 0002);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (016, 'MARIA', 'PIGUAVE HOLGUIN', 1395246321, 'BARRIO SAN JOSE', '10/01/1999', 0007);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (017, 'CECILIA', 'MOLINA MACIAS', 1315568651, 'CALLE 53 AVENIDA 19', '25/08/1996', 0006);
INSERT INTO USUARIO (CLI_CODIGO, CLI_NOMBRE, CLI_APELLIDO, CLI_CEDULA, CLI_DIRECCION, CLI_FECHA_NACIMIENTO, BIN_NUMERO) VALUES
 (018, 'BETTY', 'RODRIGUEZ LARCO', 1345995532, 'BARRIO CENTRO ', '07/09/2002', 0005);

/***********************************************
************CREAR TABLA DE INSCRIPCION**********
************************************************/

CREATE TABLE INSCRIPCION(
INC_CODIGO INTEGER PRIMARY KEY,
INC_DESCUENTO FLOAT,
INC_FECHA DATE,
ADMI_ID INTEGER NULL,
CLI_CODIGO INT NULL, 
CONSTRAINT ADMI_ID foreign key (ADMI_ID)
REFERENCES ADMINISTRADOR(ADMI_ID) ON UPDATE CASCADE,
CONSTRAINT CLI_CODIGO  foreign key (CLI_CODIGO )
REFERENCES USUARIO(CLI_CODIGO ) ON UPDATE CASCADE
);

/**************************************************
************INSERTAR DATOS DE INSCRIPCION**********
***************************************************/

INSERT INTO INSCRIPCION (INC_CODIGO,  INC_DESCUENTO,  INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0001,0.00 ,'07/10/2020',004, 008);
INSERT INTO  INSCRIPCION (INC_CODIGO , INC_DESCUENTO ,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0002,0.00, '19/09/2020',004, 010);
INSERT INTO INSCRIPCION (INC_CODIGO , INC_DESCUENTO, INC_FECHA,ADMI_ID, CLI_CODIGO ) VALUES
 (0003 ,0.00,'03/07/2020', 001, 001);
INSERT INTO INSCRIPCION (INC_CODIGO  , INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0004 ,0.00,'30/06/2020', 001, 003);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0005,0.00,'28/06/2020', 001, 012);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0006 ,0.00,'20/07/2020', 002, 004);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0007 ,0.00,'08/08/2020', 002, 009);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0008 ,0.00,'07/08/2020', 002, 015);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0009 ,0.00,'09/09/2020', 003, 002);
INSERT INTO INSCRIPCION (INC_CODIGO , INC_DESCUENTO, INC_FECHA,ADMI_ID, CLI_CODIGO ) VALUES
 (0010 ,0.00,'07/09/2020', 003, 005);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0011 ,0.00,'08/11/2020', 005, 006);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0012 ,0.00,'05/11/2020', 005, 014);
INSERT INTO INSCRIPCION (INC_CODIGO , INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0013 ,0.00,'09/11/2020', 005, 018);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0014 ,0.00,'24/11/2020', 006, 011);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0015 ,0.00, '08/12/2020', 006, 017);
INSERT INTO  INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0016 ,0.00,'07/01/2021', 007, 007);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0017 ,0.00,'28/12/2020', 007, 013);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0018 ,0.00,'05/01/2021', 001, 016);
INSERT INTO INSCRIPCION (INC_CODIGO , INC_DESCUENTO, INC_FECHA,ADMI_ID, CLI_CODIGO ) VALUES
 (0019 ,0.00,'25/7/2020', 002, 005);
INSERT INTO INSCRIPCION (INC_CODIGO , INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0020 ,0.00,'30/06/2020', 005, 003);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0021 ,0.00,'24/11/2020', 004, 010);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0022 ,0.00,'10/08/2020', 003, 009);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0023 ,0.00,'24/09/2020', 007, 007);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0024 ,0.00, '08/11/2020', 001, 009);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0025 ,0.00,'07/01/2021', 006 ,007);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0026 ,0.00,'23/12/2020', 002, 015);
INSERT INTO INSCRIPCION (INC_CODIGO ,  INC_DESCUENTO,INC_FECHA, ADMI_ID, CLI_CODIGO ) VALUES
 (0027 ,0.00,'06/01/2021', 007, 005);
 
/******************************************
*************CREAR TABLA DE PAGO***********
******************************************/

CREATE TABLE PAGO(
PAG_CODIGO INTEGER PRIMARY KEY,
PAG_REALIZADO FLOAT,
INC_CODIGO INTEGER NULL,
CONSTRAINT INC_CODIGO  foreign key (INC_CODIGO )
REFERENCES INSCRIPCION(INC_CODIGO ) ON UPDATE CASCADE
);

/***********************************************
*************INSERTAR DATOS DE PAGO*************
************************************************/

INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0001, 40.00, 0001);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0002, 40.00, 0002);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0003, 40.00, 0003);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0004, 36.00, 0004);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0005, 15.00, 0005);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0006, 25.00, 0006);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0007, 00.00, 0007);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0008, 10.00, 0008);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (009, 35.00, 009);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0010, 27.00, 0010);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0011, 00.00, 0011);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0012, 00.00, 0012);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0013, 20.00, 0013);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0014, 25.00, 0014);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0015, 10.00, 0015);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0016, 00.00, 0016);
 INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0017, 40.00, 0017);
 INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0018, 40.00, 0018);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0019, 30.00, 0019);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0020, 00.00, 0020);
 INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0021, 10.00, 0021);
 INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0022,15.00,  0022);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0023, 40.00, 0023);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0024,40.00, 0024);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0025,00.00,  0025);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0026,00.00, 0026);
INSERT INTO PAGO (PAG_CODIGO, PAG_REALIZADO, INC_CODIGO) VALUES
 (0027,25.00, 0027);

/***********************************************
**************CREAR TABLA DE GANADOR************
************************************************/

CREATE TABLE GANADOR(
  GAN_CODIGO INTEGER PRIMARY KEY,
  GAN_CANTIDAD_GANADOS INTEGER ,
  BIN_NUMERO INTEGER NULL,
  CLI_CODIGO INTEGER NULL,
   CONSTRAINT BIN_NUMERO foreign key (BIN_NUMERO)
 REFERENCES BINGO(BIN_NUMERO) ON UPDATE CASCADE,
  CONSTRAINT CLI_CODIGO foreign key (CLI_CODIGO)
 REFERENCES USUARIO(CLI_CODIGO) ON UPDATE CASCADE
);

/***********************************************
**************INSERTAR DATOS DE GANADOR************
************************************************/

INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES 
(001, 3 ,001 , 005 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (002, 0 ,004 , 010 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (003, 2 ,006 ,  016 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (004, 8 ,005 , 014 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (005, 0 ,007 , 015 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (006, 3 , 002, 009 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (007, 2 ,002 , 012 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (008, 0 , 003, 001);
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (009, 7 ,005 , 002 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0010, 4 ,007 , 004 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0011, 3 ,001 , 007 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0012, 2 ,004 , 007 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0013, 0 ,002 , 011 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0014, 1 ,006 , 003);
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0015, 5 ,005 , 006 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0016, 3 ,007 , 013 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES
 (0017, 0 ,003 , 017 );
INSERT INTO GANADOR (GAN_CODIGO, GAN_CANTIDAD_GANADOS, BIN_NUMERO, CLI_CODIGO) VALUES 
(0018, 0 ,001 , 018 );
