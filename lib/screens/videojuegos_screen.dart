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
            margin: const EdgeInsets.only(bottom: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 25,
              ),
              leading: const CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage('assets/ff7 boxart - Bing.jpeg'),
              ),
              title: const Text(
                'The Last of Us',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Aventura, narrativa y supervivencia.'),
              trailing: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('The Last of Us'),
                      content: const Text(
                        'The Last of Us es un juego de aventura y supervivencia con una historia emocional y personajes memorables.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Ver más'),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('The Last of Us'),
                    content: const Text(
                      'The Last of Us es un juego de aventura y supervivencia con una historia emocional y personajes memorables.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cerrar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text('God of War 3'),
              subtitle: const Text('Acción épica y mitología.'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text('Final Fantasy 7'),
              subtitle: const Text('RPG clásico con gran historia.'),
            ),
          ),
        ],
      ),
    );
  }
}
