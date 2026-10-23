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
          child: Column( // 2. WIDGET: Column
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Película Destacada',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // Banner principal con Stack y Container
              Stack( // 3. WIDGET: Stack
                children: [
                  Container( // 4. WIDGET: Container
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/600/300',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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

              const Text(
                'Detalles de la función',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              const Row( // 5. WIDGET: Row
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('4.8 / 5.0'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.lightBlue), // Corregido a lightBlue
                      SizedBox(width: 4),
                      Text('120 min'),
                    ],
                  ),
                  Row(
                    children: [
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