import 'package:ejercicio_practico_ev2/pages/principalApp.dart';

const List menu_list_1 = ["Overview", "Talk", "Album","Follow"];

const List portada = [
  {
    "img": "assets/images/img_portada.png"
  }
];

const List titulos = ["Animales",];

const List titulos2 = ["Paisajes",];

const List animales = [
  {
    "img": "assets/animal/animal_1.jpg",
    "title": "Halcon",
    "description": "es un género de aves falconiformes de la familia Falconidae; varias especies son comúnmente conocidas como halcones, cernícalos, o alcotanes.Los halcones tienen alas finas, acentuadas, que les permiten alcanzar velocidades extremadamente altas. Los halcones peregrinos son los animales más rápidos del planeta, alcanzando velocidades en vuelo en picado entre los 230 a 360 km/h.En vuelo horizontal alcanza los 96 km/h.",
  },
  {
    "img": "assets/animal/animal_2.jpg",
    "title": "Zorro",
    "description":"La mayoría de los zorros viven entre 5 a 7 años en libertad, aunque pueden llegar a alcanzar los 12 o incluso sobrepasar esa edad en cautiverio. Son generalmente más pequeños que otros miembros de la familia Canidae, tales como; lobos, chacales y perros domésticos. Sus rasgos típicos incluyen un fino hocico y una espesa cola. Otras características físicas varían según su hábitat. Por ejemplo, el zorro del desierto tiene largas orejas y pelaje corto, mientras que el zorro ártico tiene pequeñas orejas y un denso pelaje."
  },
  {
    "img": "assets/animal/animal_3.jpg",
    "title": "Guepardo",
    "description":"El guepardo o chita (Acinonyx jubatus)1​ es un miembro atípico de la familia de los félidos. Es el único representante vivo del género Acinonyx. Caza gracias a su vista y a su gran velocidad. Es el animal terrestre más veloz, ya que alcanza una velocidad punta de 115 km/h en carreras de hasta cuatrocientos o quinientos metros.Las hembras pueden tener hasta cinco cachorros por camada. Su presa principal es la gacela de Thomson.El guepardo es uno de los felinos que tienen mayor riesgo a desaparecer puesto que sus cifras se han reducido a más del 50% en los últimos veinticinco años y su hábitat ha desaparecido un 90%. En el año 2020 se estimó que quedaban menos de siete mil guepardos en libertad"
  },
  {
    "img": "assets/animal/animal_4.jpg",
    "title": "Tigre",
    "description":"El tigre (Panthera tigris) es una de las especies​ de la subfamilia de los panterinos (familia Felidae) pertenecientes al género Panthera. Se encuentra solamente en el continente asiático; es un predador carnívoro y es la especie de félido más grande del mundo junto con el león pudiendo alcanzar ambos un tamaño comparable al de los fósiles de félidos de mayor tamaño."
  },
  {
    "img": "assets/animal/animal_5.jpg",
    "title": "Leon",
    "description":"El león (Panthera leo) es un mamífero carnívoro de la familia de los félidos y una de las cinco especies del género Panthera. Los leones salvajes viven en poblaciones cada vez más dispersas y fragmentadas del África subsahariana (a excepción de las regiones selváticas de la costa del Atlántico y la cuenca del Congo) y una pequeña zona del noroeste de India (una población en peligro crítico en el parque nacional del Bosque de Gir y alrededores), habiendo desaparecido del resto de Asia del Sur, Asia Occidental, África del Norte y la península balcánica en tiempos históricos. Hasta finales del Pleistoceno, hace aproximadamente 10 000 años, de los grandes mamíferos terrestres, el león era el más extendido tras los humanos. Su distribución cubría la mayor parte de África, gran parte de Eurasia, desde el oeste de Europa hasta la India, y en América,"
  },
];

const List paisajes = [
  {
    "img": "assets/paisaje/paisaje_1.jpg",
    "title": "Carretera",
    "description":"Una carretera o ruta es una vía de transporte de dominio y uso público, proyectada y construida fundamentalmente para la circulación de vehículos. Existen diversos tipos de carreteras, aunque coloquialmente se usa el término carretera para definir a la carretera convencional que puede estar conectada, a través de accesos, a las propiedades colindantes, diferenciándolas de otro tipo de carreteras, las autovías y autopistas, que no pueden tener pasos y cruces al mismo nivel. Las carreteras se distinguen de un simple camino porque están especialmente concebidas para la circulación de vehículos de transporte."
  },
  {
    "img": "assets/paisaje/paisaje_2.jpg",
    "title": "Pueblo",
    "description":"Pueblo (del latín populus) es un término ambiguo, que puede designar a la población (el conjunto de personas de un lugar, región o país); o asimilarse al concepto de país con gobierno independiente. Incluso puede aplicarse para designar a cualquier localidad, particularmente a una población rural; o restringirse a los miembros más humildes de la sociedad (el pueblo llano, común o clases bajas). En sociología, «pueblo es un sentimiento de pertenencia a un grupo humano, una cultura, una historia, tradiciones compartidas (religiosas, alimentarias, vestimentarias, artísticas, etc.), a veces una lengua»."
  },
  {
    "img": "assets/paisaje/paisaje_3.jpg",
    "title": "Bosque",
    "description":"Un bosque es un ecosistema donde la vegetación predominante la constituyen los árboles y arbustos. Estas comunidades de plantas cubren grandes áreas de la Tierra y constituyen hábitats para los animales, moduladores de flujos hidrológicos y conservadores del suelo, constituyendo uno de los aspectos más relevantes de la biosfera del globo terráqueo. Aunque a menudo se han considerado como consumidores de dióxido de carbono atmosférico, los bosques maduros son prácticamente neutros por lo que respecta al carbono, y son solamente los alterados y los jóvenes los que actúan como dichos consumidores. De cualquier manera, los bosques maduros juegan un importante papel como reservorios estables en el ciclo global del carbono y su eliminación conlleva un incremento de los niveles de dióxido de carbono atmosférico."
  },
  {
    "img": "assets/paisaje/paisaje_4.jpg",
    "title": "Ruinas",
    "description":"El término ruinas es usado para describir castillos y los restos de arquitectura humana, estructuras que alguna vez fueron un todo, pero que se han derruido parcial o completamente debido a la carencia de mantenimiento o a los actos deliberados de destrucción. Los desastres naturales, las guerras y la despoblación, son las causas más comunes que llevan a una edificación a las ruinas."
  },
  {
    "img": "assets/paisaje/paisaje_5.jpg",
    "title": "Lago",
    "description":"Un lago (del latín: lacus) es un cuerpo de agua generalmente dulce, que se encuentra separado del mar. El aporte de agua a todos los lagos viene de los ríos, esteros, de aguas freáticas y precipitación sobre el espejo del agua. Los lagos se forman en depresiones topográficas creadas por una variedad de procesos geológicos como movimientos tectónicos, movimientos de masa, vulcanismo, formación de barras, acción de glaciares e incluso impactos de meteoritos. También existen lagos creados artificialmente por la construcción de una presa."
  },
];

