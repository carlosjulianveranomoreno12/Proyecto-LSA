-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2020 a las 01:42:49
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `nombre` varchar(42) NOT NULL,
  `referencia` varchar(42) NOT NULL,
  `id_imagen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`nombre`, `referencia`, `id_imagen`) VALUES
('hola', 'assets/img/saludos y cortesia/hola.jpg', 1),
('mundo', 'assets/img/mundo.jpg', 2),
('sol', 'assets/img/sol.jpg', 3),
('carro', 'assets/img/carro.jpg', 4),
('adios', 'assets/img/saludos y cortesia/adios.jpg', 5),
('buenas noches', 'assets/img/saludos y cortesia/buenas noche', 7),
('buenas tardes', 'assets/img/saludos y cortesia/buenas tarde', 8),
('gracias', 'assets/img/saludos y cortesia/gracias.jpg', 9),
('cuidado', 'assets/img/saludos y cortesia/cuidado.jpg', 10),
('nombre', 'assets/img/saludos y cortesia/nombre.jpg', 11),
('de nada', 'assets/img/saludos y cortesia/de nada.jpg', 12),
('no', 'assets/img/saludos y cortesia/no.jpg', 13),
('por favor', 'assets/img/saludos y cortesia/por favor.jp', 14),
('saludar', 'assets/img/saludos y cortesia/saludar.jpg', 15),
('si', 'assets/img/saludos y cortesia/si.jpg', 16),
('signo', 'assets/img/saludos y cortesia/signo.jpg', 17),
('casa', 'assets/img/casa/casa.jpg', 18),
('baño', 'assets/img/casa/baño.jpg', 19),
('cama', 'assets/img/casa/cama.jpg', 20),
('cocina', 'assets/img/casa/cocina.jpg', 21),
('cuchillo', 'assets/img/casa/cuchillo', 22),
('espejo', 'assets/img/casa/espejo.jpg', 23),
('mesa', 'assets/img/casa/mesa.jpg', 24),
('pelota', 'assets/img/casa/pelota', 25),
('silla', 'assets/img/casa/silla.jpg', 26),
('televidor', 'assets/img/casa/televisor.jpg', 27),
('telefono', 'assets/img/casa/telefono.jpg', 28),
('vaso', 'assets/img/casa/vaso.jpg', 29),
('ventana', 'assets/img/casa/ventana.jpg', 30),
('video', 'video.jpg', 31),
('agua', 'assets/img/comida/agua.jpg', 32),
('comida', 'assets/img/comida/comida.jpg', 33),
('dulce', 'assets/img/comida/dulce.jpg', 34),
('hambre', 'assets/img/comida/hambre.jpg', 35),
('galleta', 'assets/img/comida/galleta.jpg', 36),
('leche', 'assets/img/comida/leche.jpg', 37),
('pan', 'assets/img/comida/pan.jpg', 38),
('fruta', 'assets/img/comida/fruta.jpg', 39),
('aburrido', 'assets/img/verbos, a, a/aburrido.jpg', 40),
('abrazar', 'assets/img/verbos, a, a/abrazar.jpg', 41),
('tener', 'assets/img/verbos, a, a/tener.jpg', 42),
('vamos', 'assets/img/verbos, a, a/vamos a.jpg', 43),
('triste', 'assets/img/verbos, a, a/triste.jpg', 44),
('alegre', 'assets/img/verbos, a, a/alegre.jpg', 45),
('amigo', 'assets/img/familia/amigo.jpg', 46),
('familia', 'assets/img/familia/familia.jpg', 47),
('mama', 'assets/img/familia/mama.jpg', 48),
('papa', 'assets/img/familia/papa.jpg', 49),
('hermano', 'assets/img/familia/hermano.jpg', 50),
('hermana', 'assets/img/familia/hermano.jpg', 51),
('abuelo', 'assets/img/familia/abuelo.jpg', 52),
('comer', 'assets/img/verbos, a, a/comer.jpg', 53),
('abril', 'assets/img/calendario/abril.png', 54),
('agosto', 'assets/img/calendario/agosto.png', 55),
('año', 'assets/img/calendario/año.png', 56),
('ayer', 'assets/img/calendario/ayer.png', 57),
('calendario', 'assets/img/calendario/calendario.png', 58),
('cumpleaños', 'assets/img/calendario/cumpleaños.png', 59),
('diciembre', 'assets/img/calendario/diciembre.png', 60),
('domingo', 'assets/img/calendario/domingo.png', 61),
('enero', 'assets/img/calendario/enero.png', 62),
('estaciones', 'assets/img/calendario/estaciones.png', 63),
('febrero', 'assets/img/calendario/febrero.png', 64),
('fiesta', 'assets/img/calendario/fiesta.png', 65),
('', '', 66),
('hoy', 'assets/img/calendario/hoy.png', 67),
('invierno', 'assets/img/calendario/invierno.png', 68),
('jueves', 'assets/img/calendario/jueves.png', 69),
('julio', 'assets/img/calendario/julio.png', 70),
('junio', 'assets/img/calendario/junio.png', 71),
('lunes', 'assets/img/calendario/lunes.png', 72),
('mañana', 'assets/img/calendario/mañana.png', 73),
('martes', 'assets/img/calendario/martes.png', 74),
('marzo', 'assets/img/calendario/marzo.png', 75),
('mayo', 'assets/img/calendario/mayo.png', 76),
('mes', 'assets/img/calendario/mes.png', 77),
('miercoles', 'assets/img/calendario/miercoles.png', 78),
('navidad', 'assets/img/calendario/navidad.png', 79),
('noviembre', 'assets/img/calendario/noviembre.png', 80),
('octubre', 'assets/img/calendario/octubre.png', 81),
('otoño', 'assets/img/calendario/otoño.png', 82),
('primavera', 'assets/img/calendario/primavera.png', 83),
('sabado', 'assets/img/calendario/sabado.png', 84),
('semana', 'assets/img/calendario/semana.png', 85),
('septiembre', 'assets/img/calendario/septiembre.png', 86),
('tiempo', 'assets/img/calendario/tiempo.png', 87),
('verano', 'assets/img/calendario/verano.png', 88),
('viernes', 'assets/img/calendario/viernes.png', 89),
('acerca', 'assets/img/ciudad/acerca.png', 90),
('ambulancia', 'assets/img/ciudad/ambulancia.png', 91),
('autobus', 'assets/img/ciudad/autobus.png', 92),
('banco', 'assets/img/ciudad/banco.png', 93),
('barca', 'assets/img/ciudad/barca.png', 94),
('biblioteca', 'assets/img/ciudad/biblioteca.png', 95),
('bicicleta', 'assets/img/ciudad/bicilceta.png', 96),
('bombero', 'assets/img/ciudad/bombero.png', 97),
('buzon', 'assets/img/ciudad/buzon.png', 98),
('calle', 'assets/img/ciudad/calle.png', 99),
('camion', 'assets/img/ciudad/camion.png', 100),
('cine', 'assets/img/ciudad/cine.png', 101),
('ciudad', 'assets/img/ciudad/ciudad.png', 102),
('coche', 'assets/img/ciudad/coche.png', 103),
('colegio', 'assets/img/ciudad/colegio.png', 104),
('columpio', 'assets/img/ciudad/columpio.png', 105),
('farola', 'assets/img/ciudad/farola.png', 106),
('fuente', 'assets/img/ciudad/fuente.png', 107),
('hospital', 'assets/img/ciudad/hospital.png', 108),
('libreria', 'assets/img/ciudad/libreria.png', 109),
('luz', 'assets/img/ciudad/luz.png', 110),
('medico', 'assets/img/ciudad/medico.png', 111),
('moto', 'assets/img/ciudad/moto.png', 112),
('museo', 'assets/img/ciudad/museo.png', 113),
('parque', 'assets/img/ciudad/parque.png', 114),
('pasteleria', 'assets/img/ciudad/pasteleria.png', 115),
('pastelero', 'assets/img/ciudad/pastelero.png', 116),
('pescador', 'assets/img/ciudad/pescador.png', 117),
('plaza', 'assets/img/ciudad/plaza.png', 118),
('policia', 'assets/img/ciudad/policia.png', 119),
('profesor', 'assets/img/ciudad/profesor.png', 120),
('puente', 'assets/img/ciudad/puente.png', 121),
('quiosco', 'assets/img/ciudad/quiosco.png', 122),
('semaforo', 'assets/img/ciudad/semaforo.png', 123),
('supermercado', 'assets/img/ciudad/supermercado.png', 124),
('teatro', 'assets/img/ciudad/teatro.png', 125),
('tienda', 'assets/img/ciudad/tienda.png', 126),
('tobogan', 'assets/img/ciudad/tobogan.png', 127),
('transporte', 'assets/img/ciudad/transporte.png', 128),
('vehiculos', 'assets/img/ciudad/vehiculos.png', 129),
('zapateria', 'assets/img/ciudad/zapateria.png', 130),
('abecedario', 'assets/img/colegio/abecedario.png', 131),
('alumno', 'assets/img/colegio/alumno.png', 132),
('amarillo', 'assets/img/colegio/amarillo.png', 133),
('azul', 'assets/img/colegio/azul.png', 134),
('blanco', 'assets/img/colegio/blanco.png', 135),
('boligrafo', 'assets/img/colegio/boligrafo.png', 136),
('borrador', 'assets/img/colegio/borrador.png', 137),
('cera', 'assets/img/colegio/cera.png', 138),
('circulo', 'assets/img/colegio/circulo.png', 139),
('clase', 'assets/img/colegio/clase.png', 140),
('colegio', 'assets/img/colegio/colegio.png', 141),
('colores', 'assets/img/colegio/colores.png', 142),
('cosas', 'assets/img/colegio/cosas.png', 143),
('cuaderno', 'assets/img/colegio/cuaderno.png', 144),
('cuadrado', 'assets/img/colegio/cuadrado.png', 145),
('cuento', 'assets/img/colegio/cuento.png', 146),
('dibujo', 'assets/img/colegio/dibujo.png', 147),
('diccionario', 'assets/img/colegio/diccionario.png', 148),
('diferencia', 'assets/img/colegio/diferencia.png', 149),
('forma', 'assets/img/colegio/forma.png', 150),
('borrador', 'assets/img/colegio/borrador.png', 151),
('', '', 152),
('gramo', 'assets/img/colegio/gramo.png', 153),
('grande', 'assets/img/colegio/grande.png', 154),
('hoja', 'assets/img/colegio/hoja.png', 155),
('lapiz', 'assets/img/colegio/lapiz.png', 156),
('libro', 'assets/img/colegio/libro.png', 157),
('litro', 'assets/img/colegio/litro.png', 158),
('marron', 'assets/img/colegio/marron.png', 159),
('mediano', 'assets/img/colegio/mediano.png', 160),
('medida', 'assets/img/colegio/medida.png', 161),
('metro', 'assets/img/colegio/metro.png', 162),
('multiplicar', 'assets/img/colegio/multiplicar.png', 163),
('naranja', 'assets/img/colegio/naranja.png', 164),
('negro', 'assets/img/colegio/negro.png', 165),
('palabra', 'assets/img/colegio/palabra.png', 166),
('papel', 'assets/img/colegio/papel.png', 167),
('papelera', 'assets/img/colegio/papelera.png', 168),
('pegamento', 'assets/img/colegio/pegamento.png', 169),
('pequeño', 'assets/img/colegio/pequeño.png', 170),
('pintura', 'assets/img/colegio/pintura.png', 171),
('pizarra', 'assets/img/colegio/pizarra.png', 172),
('plastilina', 'assets/img/colegio/plastilina.png', 173),
('rectangulo', 'assets/img/colegio/rectangulo.png', 174),
('resta', 'assets/img/colegio/resta.png', 175),
('rojo', 'assets/img/colegio/rojo.png', 176),
('rosa', 'assets/img/colegio/rosa.png', 177),
('rotulador', 'assets/img/colegio/rotulador.png', 178),
('sacapuntas', 'assets/img/colegio/sacapuntas.png', 179),
('servicio', 'assets/img/colegio/servicio.png', 180),
('suma', 'assets/img/colegio/suma.png', 181),
('tamaño', 'assets/img/colegio/tamaño.png', 182),
('tijeras', 'assets/img/colegio/tijeras.png', 183),
('tiza', 'assets/img/colegio/tiza.png', 184),
('triangulo', 'assets/img/colegio/triangulo.png', 185),
('verde', 'assets/img/colegio/verde.png', 186),
('boca', 'assets/img/cuerpo/boca.png', 187),
('brazo', 'assets/img/cuerpo/brazo.png', 188),
('cabeza', 'assets/img/cuerpo/cabeza.png', 189),
('cuerpo', 'assets/img/cuerpo/cuerpo.png', 190),
('culo', 'assets/img/cuerpo/culo.png', 191),
('dedo', 'assets/img/cuerpo/dedo.png', 192),
('dientes', 'assets/img/cuerpo/dientes.png', 193),
('gusto', 'assets/img/cuerpo/gusto.png', 194),
('lengua', 'assets/img/cuerpo/lengua.png', 195),
('mano', 'assets/img/cuerpo/mano.png', 196),
('nariz', 'assets/img/cuerpo/nariz.png', 197),
('oido', 'assets/img/cuerpo/oido.png', 198),
('ojo', 'assets/img/cuerpo/ojo.png', 199),
('olfato', 'assets/img/cuerpo/olfato.png', 200),
('oreja', 'assets/img/cuerpo/oreja.png', 201),
('pelo', 'assets/img/cuerpo/pelo.png', 202),
('pene', 'assets/img/cuerpo/pene.png', 203),
('pie', 'assets/img/cuerpo/pie.png', 204),
('pierna', 'assets/img/cuerpo/pierna.png', 205),
('tacto', 'assets/img/cuerpo/tacto.png', 206),
('vista', 'assets/img/cuerpo/vista.png', 207),
('vulva', 'assets/img/cuerpo/vulva.png', 208),
('a', 'assets/img/dactilológico/a.png', 209),
('b', 'assets/img/dactilológico/b.png', 210),
('c', 'assets/img/dactilológico/c.png', 211),
('d', 'assets/img/dactilológico/d.png', 212),
('e', 'assets/img/dactilológico/e.png', 213),
('f', 'assets/img/dactilológico/f.png', 214),
('g', 'assets/img/dactilológico/g.png', 215),
('h', 'assets/img/dactilológico/h.png', 216),
('i', 'assets/img/dactilológico/i.png', 217),
('j', 'assets/img/dactilológico/j.png', 218),
('k', 'assets/img/dactilológico/k.png', 219),
('l', 'assets/img/dactilológico/l.png', 220),
('m', 'assets/img/dactilológico/m.png', 221),
('n', 'assets/img/dactilológico/n.png', 222),
('ñ', 'assets/img/dactilológico/ñ.png', 223),
('o', 'assets/img/dactilológico/o.png', 224),
('p', 'assets/img/dactilológico/p.png', 225),
('q', 'assets/img/dactilológico/q.png', 226),
('', '', 227),
('r', 'assets/img/dactilológico/r.png', 228),
('s', 'assets/img/dactilológico/s.png', 229),
('t', 'assets/img/dactilológico/t.png', 230),
('u', 'assets/img/dactilológico/u.png', 231),
('v', 'assets/img/dactilológico/v.png', 232),
('w', 'assets/img/dactilológico/w.png', 233),
('x', 'assets/img/dactilológico/x.png', 234),
('y', 'assets/img/dactilológico/y.png', 235),
('z', 'assets/img/dactilológico/z0.png', 236),
('ch', 'assets/img/dactilológico/ch.png', 237),
('ll', 'assets/img/dactilológico/ll.png', 238),
('rr', 'assets/img/dactilológico/rr.png', 239),
('dactilologico', 'assets/img/dactilológico/dactilologico.png', 240),
('abeja', 'assets/img/naturaleza/abeja.png', 241),
('abeto', 'assets/img/naturaleza/abeto.png', 242),
('aguila', 'assets/img/naturaleza/aguila.png', 243),
('animal', 'assets/img/naturaleza/animal.png', 244),
('arbol', 'assets/img/naturaleza/arbol.png', 245),
('burro', 'assets/img/naturaleza/burro.png', 246),
('caballo', 'assets/img/naturaleza/caballo.png', 247),
('cabra', 'assets/img/naturaleza/cabra.png', 248),
('calor', 'assets/img/naturaleza/calor.png', 249),
('camello', 'assets/img/naturaleza/camello.png', 250),
('cerdo', 'assets/img/naturaleza/cerdo.png', 251),
('cocodrilo', 'assets/img/naturaleza/cocodrilo.png', 252),
('conejo', 'assets/img/naturaleza/conejo.png', 253),
('delfin', 'assets/img/naturaleza/delfin.png', 254),
('elefante', 'assets/img/naturaleza/elefante.png', 255),
('estrella', 'assets/img/naturaleza/estrella.png', 256),
('faro', 'assets/img/naturaleza/faro.png', 257),
('flor', 'assets/img/naturaleza/flor.png', 258),
('flotador', 'assets/img/naturaleza/flotador.png', 259),
('foca', 'assets/img/naturaleza/foca.png', 260),
('frio', 'assets/img/naturaleza/frio.png', 261),
('fuego', 'assets/img/naturaleza/fuego.png', 262),
('gallina', 'assets/img/naturaleza/gallina.png', 263),
('gato', 'assets/img/naturaleza/gato.png', 264),
('granja', 'assets/img/naturaleza/granja.png', 265),
('hierba', 'assets/img/naturaleza/hierba.png', 266),
('hoja', 'assets/img/naturaleza/hoja.png', 267),
('jirafa', 'assets/img/naturaleza/jirafa.png', 268),
('lago', 'assets/img/naturaleza/lago.png', 269),
('leon', 'assets/img/naturaleza/leon.png', 270),
('lluvia', 'assets/img/naturaleza/lluvia.png', 271),
('loro', 'assets/img/naturaleza/loro.png', 272),
('luna', 'assets/img/naturaleza/luna.png', 273),
('mar', 'assets/img/naturaleza/mar.png', 274),
('margarita', 'assets/img/naturaleza/margarita.png', 275),
('mariposa', 'assets/img/naturaleza/mariposa.png', 276),
('mono', 'assets/img/naturaleza/mono.png', 277),
('montaña', 'assets/img/naturaleza/montaña.png', 278),
('naturaleza', 'assets/img/naturaleza/naturaleza.png', 279),
('nieve', 'assets/img/naturaleza/nieve.png', 280),
('nube', 'assets/img/naturaleza/nube.png', 281),
('nublado', 'assets/img/naturaleza/nublado.png', 282),
('oso', 'assets/img/naturaleza/oso.png', 283),
('oveja', 'assets/img/naturaleza/oveja.png', 284),
('pajaro', 'assets/img/naturaleza/pajaro.png', 285),
('palmera', 'assets/img/naturaleza/palmera.png', 286),
('pato', 'assets/img/naturaleza/pato.png', 287),
('perro', 'assets/img/naturaleza/perro.png', 288),
('piedra', 'assets/img/naturaleza/piedra.png', 289),
('playa', 'assets/img/naturaleza/playa.png', 290),
('pozo', 'assets/img/naturaleza/pozo.png', 291),
('rio', 'assets/img/naturaleza/rio.png', 292),
('sol', 'assets/img/naturaleza/sol.png', 293),
('sombrilla', 'assets/img/naturaleza/sombrilla.png', 294),
('tiburon', 'assets/img/naturaleza/tiburon.png', 295),
('tiempo', 'assets/img/naturaleza/tiempo.png', 296),
('tigre', 'assets/img/naturaleza/tigre.png', 297),
('tormenta', 'assets/img/naturaleza/tormenta.png', 298),
('toro', 'assets/img/naturaleza/toro.png', 299),
('tortuga', 'assets/img/naturaleza/tortuga.png', 300),
('vaca', 'assets/img/naturaleza/vaca.png', 301),
('viento', 'assets/img/naturaleza/viento.png', 302),
('zoo', 'assets/img/naturaleza/zoo.png', 303),
('como', 'assets/img/preguntas/como.png', 304),
('cual', 'assets/img/preguntas/cual.png', 305),
('cuando', 'assets/img/preguntas/cuando.png', 306),
('', '', 307),
('cuanto', 'assets/img/preguntas/cuanto.png', 308),
('donde', 'assets/img/preguntas/donde.png', 309),
('preguntar', 'assets/img/preguntas/preguntar.png', 310),
('que', 'assets/img/preguntas/que.png', 311),
('quien', 'assets/img/preguntas/quien.png', 312),
('abrigo', 'assets/img/ropa/abrigo.png', 313),
('babi', 'assets/img/ropa/babi.png', 314),
('bañador', 'assets/img/ropa/bañador.png', 315),
('braga', 'assets/img/ropa/braga.png', 316),
('bufanda', 'assets/img/ropa/bufanda.png', 317),
('calzoncillo', 'assets/img/ropa/calzoncillo.png', 318),
('camisa', 'assets/img/ropa/camisa.png', 319),
('chandal', 'assets/img/ropa/chandal.png', 320),
('disfraz', 'assets/img/ropa/disfraz.png', 321),
('gafas', 'assets/img/ropa/gafas.png', 322),
('gorra', 'assets/img/ropa/gorra.png', 323),
('jersey', 'assets/img/ropa/jersey.png', 324),
('mochila', 'assets/img/ropa/mochila.png', 325),
('pantalon', 'assets/img/ropa/pantalon.png', 326),
('pijama', 'assets/img/ropa/pijama.png', 327),
('reloj', 'assets/img/ropa/reloj.png', 328),
('ropa', 'assets/img/ropa/ropa.png', 329),
('zapatilla', 'assets/img/ropa/zapatilla.png', 330),
('zapato', 'assets/img/ropa/zapato.png', 331),
('cacerola', 'assets/img/casa/cacerola.png', 332),
('champu', 'assets/img/casa/champu.png', 333),
('colonia', 'assets/img/casa/colonia.png', 334),
('cristal', 'assets/img/casa/cristal.png', 335),
('cuchara', 'assets/img/casa/cuchara.png', 336),
('despertador', 'assets/img/casa/despertador.png', 337),
('dormitorio', 'assets/img/casa/dormitorio.png', 338),
('esponja', 'assets/img/casa/esponja.png', 339),
('fax', 'assets/img/casa/fax.png', 340),
('jabon', 'assets/img/casa/jabon.png', 341),
('jarra', 'assets/img/casa/jarra.png', 342),
('lampara', 'assets/img/casa/lampara.png', 343),
('lavabo', 'assets/img/casa/lavabo.png', 344),
('lavadora', 'assets/img/casa/lavadora.png', 345),
('maceta', 'assets/img/casa/maceta.png', 346),
('manta', 'assets/img/casa/manta.png', 347),
('maquina', 'assets/img/casa/maquina.png', 348),
('mesilla', 'assets/img/casa/mesilla.png', 349),
('mueble', 'assets/img/casa/mueble.png', 350),
('nevera', 'assets/img/casa/nevera.png', 351),
('objeto', 'assets/img/casa/objeto.png', 352),
('ordenador', 'assets/img/casa/ordenador.png', 353),
('peine', 'assets/img/casa/peine.png', 354),
('plancha', 'assets/img/casa/plancha.png', 355),
('plato', 'assets/img/casa/plato.png', 356),
('', '', 357),
('puerta', 'assets/img/casa/puerta.png', 358),
('sabana', 'assets/img/casa/sabana.png', 359),
('sofa', 'assets/img/casa/sofa.png', 360),
('tenedor', 'assets/img/casa/tenedor.png', 361),
('toalla', 'assets/img/casa/toalla.png', 362),
('video', 'assets/img/casa/video.png', 363),
('aceite', 'assets/img/comida/aceite.png', 364),
('alimento', 'assets/img/comida/alimento.png', 365),
('', '', 366),
('alfombra', 'assets/img/casa/alfombra.jpg', 367),
('armario', 'assets/img/casa/armario.jpg', 368),
('bañera', 'assets/img/casa/bañera.jpg', 369),
('sala', 'assets/img/casa/sala.jpg', 370),
('sarten', 'assets/img/casa/sarten.jpg', 371),
('servilleta', 'assets/img/casa/servilleta.jpg', 372),
('arroz', 'assets/img/comida/arroz.jpg', 373),
('azucar', 'assets/img/comida/azucar.jpg', 374),
('bebida', 'assets/img/comida/bebidas.jpg', 375),
('bocadillo', 'assets/img/comida/bocadillo.jpg', 376),
('caramelo', 'assets/img/comida/caramelo.jpg', 377),
('carne', 'assets/img/comida/carne.jpg', 378),
('cebolla', 'assets/img/comida/cebolla.jpg', 379),
('cena', 'assets/img/comida/cena.jpg', 380),
('chocolate', 'assets/img/comida/chocolate.jpg', 381),
('desayuno', 'assets/img/comida/desayuno.jpg', 382),
('flan', 'assets/img/comida/flan.jpg', 383),
('helado', 'assets/img/comida/helado.jpg', 384),
('huevo', 'assets/img/comida/huevo.jpg', 385),
('lechuga', 'assets/img/comida/lechuga.jpg', 386),
('macarrones', 'assets/img/comida/macarrones.jpg', 387),
('manzana', 'assets/img/comida/manzana.jpg', 388),
('merienda', 'assets/img/comida/merienda.jpg', 389),
('naranja', 'assets/img/comida/naranja.jpg', 390),
('patata', 'assets/img/comida/patata.jpg', 391),
('pera', 'assets/img/comida/pera.jpg', 392),
('pescado', 'assets/img/comida/pescado.jpg', 393),
('platano', 'assets/img/comida/platano.jpg', 394),
('pollo', 'assets/img/comida/pollo.jpg', 395),
('postre', 'assets/img/comida/postre.jpg', 396),
('pure', 'assets/img/comida/pure.jpg', 397),
('queso', 'assets/img/comida/queso.jpg', 398),
('sal', 'assets/img/comida/sal.jpg', 399),
('sandia', 'assets/img/comida/sandia.jpg', 400),
('sed', 'assets/img/comida/sed.jpg', 401),
('sopa', 'assets/img/comida/sopa.jpg', 402),
('tarta', 'assets/img/comida/tarta.jpg', 403),
('tomate', 'assets/img/comida/tomate.jpg', 404),
('uva', 'assets/img/comida/uva.jpg', 405),
('yogur', 'assets/img/comida/yogur.jpg', 406),
('zanahoria', 'assets/img/comida/zanahoria.jpg', 407),
('zumo', 'assets/img/comida/zumo.jpg', 408),
('bebe', 'assets/img/familia/bebe.jpg', 409),
('ciego', 'assets/img/familia/ciego.jpg', 410),
('niña', 'assets/img/familia/niña.jpg', 411),
('niño', 'assets/img/familia/niño.jpg', 412),
('persona', 'assets/img/familia/persona.jpg', 413),
('primo', 'assets/img/familia/primo.jpg', 414),
('sordo', 'assets/img/familia/sordo.jpg', 415),
('sordociego', 'assets/img/familia/sordociego.jpg', 416),
('tio', 'assets/img/familia/tio.jpg', 417),
('acido', 'assets/img/verbos, a, a/acido.jpg', 418),
('adjetivos', 'assets/img/verbos, a, a/adjetivos.jpg', 419),
('adverbios', 'assets/img/verbos, a, a/adverbios.jpg', 420),
('agradable', 'assets/img/verbos, a, a/agradable.jpg', 421),
('alto', 'assets/img/verbos, a, a/alto.jpg', 422),
('amar', 'assets/img/verbos, a, a/amar.jpg', 423),
('amargo', 'assets/img/verbos, a, a/amargo.jpg', 424),
('andar', 'assets/img/verbos, a, a/andar.jpg', 425),
('aprender', 'assets/img/verbos, a, a/aprender.jpg', 426),
('ayudar', 'assets/img/verbos, a, a/ayudar.jpg', 427),
('bajo', 'assets/img/verbos, a, a/bajo.jpg', 428),
('beber', 'assets/img/verbos, a, a/beber.jpg', 429),
('besar', 'assets/img/verbos, a, a/besar.jpg', 430),
('blando', 'assets/img/verbos, a, a/blando.jpg', 431),
('bueno', 'assets/img/verbos, a, a/bueno.jpg', 432),
('caliente', 'assets/img/verbos, a, a/caliente.jpg', 433),
('castaño', 'assets/img/verbos, a, a/castaño.jpg', 434),
('claro', 'assets/img/verbos, a, a/claro.jpg', 435),
('comprar', 'assets/img/verbos, a, a/comprar.jpg', 436),
('conocer', 'assets/img/verbos, a, a/conocer.jpg', 437),
('contar', 'assets/img/verbos, a, a/contar.jpg', 438),
('contento', 'assets/img/verbos, a, a/.contentojpg', 439),
('correr', 'assets/img/verbos, a, a/correr.jpg', 440),
('crecer', 'assets/img/verbos, a, a/crecer.jpg', 441),
('delante', 'assets/img/verbos, a, a/delante.jpg', 442),
('delgado', 'assets/img/verbos, a, a/delgado.jpg', 443),
('dentro', 'assets/img/verbos, a, a/dentro.jpg', 444),
('desagradable', 'assets/img/verbos, a, a/desagradable.jpg', 445),
('descansar', 'assets/img/verbos, a, a/descansar.jpg', 446),
('detras', 'assets/img/verbos, a, a/detras.jpg', 447),
('diferente', 'assets/img/verbos, a, a/diferente.jpg', 448),
('divertido', 'assets/img/verbos, a, a/divertido.jpg', 449),
('dormir', 'assets/img/verbos, a, a/dormir.jpg', 450),
('ducharse', 'assets/img/verbos, a, a/ducharse.jpg', 451),
('duro', 'assets/img/verbos, a, a/duro.jpg', 452),
('encima', 'assets/img/verbos, a, a/encima.jpg', 453),
('enfadado', 'assets/img/verbos, a, a/enfadado.jpg', 454),
('enfermo', 'assets/img/verbos, a, a/enfermo.jpg', 455),
('entender', 'assets/img/verbos, a, a/entender.jpg', 456),
('escribir', 'assets/img/verbos, a, a/escribir.jpg', 457),
('esperar', 'assets/img/verbos, a, a/esperar.jpg', 458),
('explicar', 'assets/img/verbos, a, a/explicar.jpg', 459),
('feo', 'assets/img/verbos, a, a/feo.jpg', 460),
('frio', 'assets/img/verbos, a, a/frio.jpg', 461),
('fuera', 'assets/img/verbos, a, a/fuera.jpg', 462),
('gordo', 'assets/img/verbos, a, a/gordo.jpg', 463),
('guapo', 'assets/img/verbos, a, a/guapo.jpg', 464),
('gustar', 'assets/img/verbos, a, a/gustar.jpg', 465),
('hablar', 'assets/img/verbos, a, a/hablar.jpg', 466),
('igual', 'assets/img/verbos, a, a/igual.jpg', 467),
('jugar', 'assets/img/verbos, a, a/jugar.jpg', 468),
('leer', 'assets/img/verbos, a, a/leer.jpg', 469),
('lejos', 'assets/img/verbos, a, a/lejos.jpg', 470),
('lento', 'assets/img/verbos, a, a/lento.jpg', 471),
('levantarse', 'assets/img/verbos, a, a/levantarse.jpg', 472),
('limpio', 'assets/img/verbos, a, a/limpio.jpg', 473),
('lleno', 'assets/img/verbos, a, a/lleno.jpg', 474),
('llorar', 'assets/img/verbos, a, a/llorar.jpg', 475),
('mal', 'assets/img/verbos, a, a/mal.jpg', 476),
('malo', 'assets/img/verbos, a, a/malo.jpg', 477),
('montasre', 'assets/img/verbos, a, a/montarse.jpg', 478),
('moreno', 'assets/img/verbos, a, a/moreno.jpg', 479),
('muchos', 'assets/img/verbos, a, a/muchos.jpg', 480),
('nacer', 'assets/img/verbos, a, a/nacer.jpg', 481),
('oir', 'assets/img/verbos, a, a/oir.jpg', 482),
('oler', 'assets/img/verbos, a, a/oler.jpg', 483),
('oscuro', 'assets/img/verbos, a, a/oscuro.jpg', 484),
('pasear', 'assets/img/verbos, a, a/pasear.jpg', 485),
('patinar', 'assets/img/verbos, a, a/patinar.jpg', 486),
('pegar', 'assets/img/verbos, a, a/pegar.jpg', 487),
('peinarse', 'assets/img/verbos, a, a/peinarse.jpg', 488),
('pelirrojo', 'assets/img/verbos, a, a/pelirrojo.jpg', 489),
('pocos', 'assets/img/verbos, a, a/pocos.jpg', 490),
('ponerse', 'assets/img/verbos, a, a/ponerse.jpg', 491),
('primero', 'assets/img/verbos, a, a/primero.jpg', 492),
('quitarse', 'assets/img/verbos, a, a/quitarse.jpg', 493),
('rapido', 'assets/img/verbos, a, a/rapido.jpg', 494),
('regalar', 'assets/img/verbos, a, a/regalar.jpg', 495),
('', '', 496),
('reir', 'assets/img/verbos, a, a/reir.jpg', 497),
('rubio', 'assets/img/verbos, a, a/rubio.jpg', 498),
('saborear', 'assets/img/verbos, a, a/saborear.jpg', 499),
('salado', 'assets/img/verbos, a, a/salado.jpg', 500),
('saltar', 'assets/img/verbos, a, a/saltar.jpg', 501),
('sano', 'assets/img/verbos, a, a/sano.jpg', 502),
('sentarse', 'assets/img/verbos, a, a/sentarse.jpg', 503),
('sucio', 'assets/img/verbos, a, a/sucio.jpg', 504),
('templado', 'assets/img/verbos, a, a/templado.jpg', 505),
('tocar', 'assets/img/verbos, a, a/tocar.jpg', 506),
('ultimo', 'assets/img/verbos, a, a/ultimo.jpg', 507),
('vacio', 'assets/img/verbos, a, a/vacio.jpg', 508),
('vamos', 'assets/img/verbos, a, a/vamos.jpg', 509),
('ver', 'assets/img/verbos, a, a/ver.jpg', 510),
('verbo', 'assets/img/verbos, a, a/verbo.jpg', 511),
('vestirse', 'assets/img/verbos, a, a/vestirse.jpg', 512),
('vivir', 'assets/img/verbos, a, a/vivir.jpg', 513);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
