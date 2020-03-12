-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2020 a las 23:49:03
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Webs`
--
CREATE DATABASE IF NOT EXISTS `Webs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Webs`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Enlaces`
--

CREATE TABLE `Enlaces` (
  `pagina` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Enlaces`
--

INSERT INTO `Enlaces` (`pagina`, `status`) VALUES
('http://karani.mx', 1),
('#content', 1),
('http://karani.mx/', 1),
('http://karani.mx/', 1),
('http://karani.mx/nosotros/', 1),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/libros/', 0),
('http://karani.mx/nuestros-proyectos/', 0),
('http://karani.mx/publicaciones/', 0),
('http://karani.mx/contacto/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://www.revistacomunicar.com', 0),
('http://rita.det.uvigo.es/VAEPRITA/', 0),
('http://redie.uabc.mx/redie', 0),
('#content', 0),
('http://karani.mx/', 1),
('http://karani.mx/', 1),
('http://karani.mx/nosotros/', 1),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/libros/', 0),
('http://karani.mx/nuestros-proyectos/', 0),
('http://karani.mx/publicaciones/', 0),
('http://karani.mx/contacto/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://www.revistacomunicar.com', 0),
('http://rita.det.uvigo.es/VAEPRITA/', 0),
('http://redie.uabc.mx/redie', 0),
('#content', 0),
('http://karani.mx/', 0),
('http://karani.mx/', 0),
('http://karani.mx/nosotros/', 1),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/libros/', 0),
('http://karani.mx/nuestros-proyectos/', 0),
('http://karani.mx/publicaciones/', 0),
('http://karani.mx/contacto/', 0),
('http://karani.mx/descargas/cv_josealfredojimenez.pdf', 0),
('mailto:ppalf@yahoo.com', 0),
('https://www.facebook.com/josealfredo.jimenezmurillo', 0),
('http://karani.mx/descargas/cv_octavioortiz.pdf', 0),
('mailto:octavio1872@hotmail.com', 0),
('https://www.facebook.com/octavio.ortiz.3551/', 0),
('http://karani.mx/descargas/cv_juancarlosolivares.pdf', 0),
('mailto:jcolivares@itmorelia.edu.mx', 0),
('http://karani.mx/descargas/cv_erendirajimenez.pdf', 0),
('mailto:emjimenezh@gmail.com', 0),
('#content', 0),
('http://karani.mx/', 0),
('http://karani.mx/', 0),
('http://karani.mx/nosotros/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/libros/', 0),
('http://karani.mx/nuestros-proyectos/', 0),
('http://karani.mx/publicaciones/', 0),
('http://karani.mx/contacto/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/author/admin/', 0),
('http://karani.mx/category/noticias/', 1),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/2014/11/27/presentacion-del-libro-fundamentos-de-programacion/', 0),
('http://karani.mx/2016/10/10/estancia-de-investigacion-delfin-2016-en-el-tecnologico-de-morelia/', 0),
('http://karani.mx/2016/09/15/alumnos-del-tec-de-morelia-desarrollan-software-durante-estancia-en-espana/', 0),
('http://karani.mx/2016/05/20/concurso-de-programacion/', 0),
('http://karani.mx/2016/03/20/concurso-de-robots/', 0),
('http://karani.mx/2015/09/02/perfil-deseable-para-el-maestro-jose-alfredo-jimenez-murillo/', 0),
('http://www.revistacomunicar.com', 0),
('http://rita.det.uvigo.es/VAEPRITA/', 0),
('http://redie.uabc.mx/redie', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
