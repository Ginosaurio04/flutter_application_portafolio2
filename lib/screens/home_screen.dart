import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text('Portafolio'),
      ),

      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: 0, // Índice del elemento seleccionado
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          // Lógica para cambiar de pantalla según el índice seleccionado
          switch (index) {
            case 0:
              // Navegar a Home (ya estamos aquí)
              break;
            case 1:
              Navigator.pushNamed(context, '/videojuegos');
              break;
            case 2:
              Navigator.pushNamed(context, '/contacto');
              break;
          }
        },
      ),

      // BottomNavigationBar para cambiar de pantalla
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // Card en la parte superior del Home
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
                    'Bienvenido a mi Portafolio',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Aquí puedes ver mis proyectos, información y contacto. Usa la barra inferior para navegar.',
                  ),
                ],
              ),
            ),
          ),

          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.only(bottom: 30),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Avatar o Logo
                  CircleAvatar(
                    radius: 50,
                    // Usamos NetworkImage para URLs de internet
                    backgroundImage: const AssetImage(
                      'assets/Imagen de WhatsApp 2025-10-27 a las 21.03.40_2b373c4c.jpg',
                    ),
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                  ),
                  const SizedBox(height: 20),
                  // Nombre del Desarrollador
                  const Text(
                    'Gino Cova (Ginosaurio)',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  // Rol/Título
                  Text(
                    'Estudiante y futuro Ingeniero de Sistemas',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
