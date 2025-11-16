import 'package:flutter/material.dart';

class VideojuegosScreen extends StatelessWidget {
  const VideojuegosScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple, title: Text(title)),

      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Videojuegos Favoritos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Lista de juegos favoritos y pequeñas descripciones'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Card with image for "The Last of Us" using CircleAvatar.backgroundImage
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/God of war 3.jpeg'),
              ),
              title: const Text('God of War 3'),
              subtitle: const Text('Acción épica y mitología.'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/ff7 boxart - Bing.jpeg'),
              ),
              title: const Text('Final Fantasy 7'),
              subtitle: const Text('RPG clásico con gran historia.'),
            ),
          ),
        ],
      ),
    );
  }
}
