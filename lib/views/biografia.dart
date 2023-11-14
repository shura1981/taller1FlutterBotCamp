import 'package:flutter/material.dart';

class BiografiaView extends StatelessWidget {
  const BiografiaView({super.key});

  @override
  Widget build(BuildContext context) {
    const double space = 20.0;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.jpg'),
            fit: BoxFit.cover,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar:
            true, // Para que la imagen de fondo se extienda detrás del app bar
        appBar: AppBar(
          // app bar atrás y menú
          title: const Text('Biografía de Sub Zero'),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.1), // Inicia con un color más oscuro
                Colors.black.withOpacity(1), // Inicia con un color más oscuro
              ],
              begin: Alignment.topCenter, // Inicio del degradado
              end: Alignment.bottomCenter, // Fin del degradado
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 100.0, left: 10.0, right: 10.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  // Nombre
                  const Text(
                    'Origen',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: space), // Espaciado
    
                  // Fila de Iconos
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.share, color: Colors.yellow),
                      Icon(Icons.thumb_up, color: Colors.yellow),
                      Icon(Icons.comment, color: Colors.yellow),
                    ],
                  ),
                  const SizedBox(height: space), // Espaciado
    
                  // Imagen
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    backgroundImage: Image.asset(
                      // Imagen de la carpeta assets
                      'assets/subzero1.png',
                      width: 300,
                      height: 300,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ).image,
                  ),
                  const SizedBox(height: 10), // Espaciado
    
                  // Descripción Larga
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      """Sub-Zero (cuyo verdadero nombre es Kuai Liang) es un ninja vestido de color azul y enmascarado (excepto en Mortal Kombat 3 y Mortal Kombat: Deadly Alliance). Al igual que su hermano, desciende de los Cryomancers, una raza foránea que posee la capacidad de generar y de controlar los poderes del hielo.
        
        Sub-Zero se ha convertido en uno de los personajes más populares de la saga de videojuegos Mortal Kombat, y su fama ha sobrepasado a la de Liu Kang, el héroe principal de los juegos. Actualmente, Sub-Zero y Scorpion son considerados los personajes más populares de la serie.
        
        Su única familia es el Lin Kuei, su hermano es Bi-Han, (después de muerto renació como Noob Saibot) y su mejor amigo es Smoke.
                      
                      """,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
