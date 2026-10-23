import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppCine());
}

class MiAppCine extends StatelessWidget {
  const MiAppCine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Cine',
      theme: ThemeData.dark(),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartelera de Cine'), // 1. WIDGET: Text
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column( // 2. WIDGET: Column (Alineación vertical)
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado de sección
              const Text(
                'Película Destacada',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // Banner principal usando Stack y Container
              Stack( // 3. WIDGET: Stack (Superposición de elementos)
                children: [
                  // Contenedor base de la imagen/poster
                  Container( // 4. WIDGET: Container (Dimensiones y bordes)
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/600/300', // Imagen de prueba
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Etiqueta superpuesta sobre la portada
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'ESTRENO',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Información y detalles de la película usando Row
              const Text(
                'Detalles de la función',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              Row( // 5. WIDGET: Row (Alineación horizontal)
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Calificación
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('4.8 / 5.0'),
                    ],
                  ),
                  // Duración
                  Row(
                    children: const [
                      Icon(Icons.timer, color: Colors.blueLight),
                      SizedBox(width: 4),
                      Text('120 min'),
                    ],
                  ),
                  // Clasificación
                  Row(
                    children: const [
                      Icon(Icons.movie, color: Colors.greenAccent),
                      SizedBox(width: 4),
                      Text('PG-13'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}