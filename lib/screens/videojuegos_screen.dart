import 'package:flutter/material.dart';

class VideojuegosScreen extends StatelessWidget {
  const VideojuegosScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple, title: Text(title)),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Índice del elemento seleccionado
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'Videojuegos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contacto',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          // Lógica para cambiar de pantalla según el índice seleccionado
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              // Ya estamos en Videojuegos
              break;
            case 2:
              Navigator.pushNamed(context, '/contacto');
              break;
          }
        },
      ),
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
          Card(
            child: ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text('The Last of Us'),
              subtitle: const Text('Aventura, narrativa y supervivencia.'),
            ),
          ),
          const SizedBox(height: 8),
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
