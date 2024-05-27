drop table IF exists Alumnos;
create table Alumnos
(
    alumno_id            int auto_increment
        primary key,
    nia_hash             varchar(255) null,
    fecha_nacimiento     datetime     null,
    municipio_nacimiento bigint       null,
    provincia_nacimiento bigint       null,
    nacionalidad         int          null,
    sexo                 varchar(20)  null,
    codigo_postal        int          null,
    fecha_matricula      datetime     null,
    turno                varchar(20)  null,
    pais_nacimiento_id   int          null,
    MunicipioNombre      varchar(100) null
);


drop table if exists Calificaciones;
create table Calificaciones
(
    calificacion_id int auto_increment
        primary key,
    ejercicio       int         null,
    evaluacion      varchar(50) null,
    alumno_id       int         null,
    modulo_id       int         null,
    nota            int         null
);

drop table if exists Modulos;
create table Modulos
(
    modulo_id    int auto_increment
        primary key,
    codigo       varchar(20)  null,
    nombre       varchar(100) null,
    periodo      varchar(50)  null,
    especialidad varchar(100) null,
    grado        varchar(100) null,
    familia      varchar(100) null,
    horas        int          null
);

drop table if exists Paises;
create table Paises
(
    pais_id    int auto_increment
        primary key,
    nombre     varchar(100) null,
    codigo_iso bigint       null,
    continente varchar(50)  null
);
