import 'package:flutter/material.dart';
import 'package:flutter_application_portafolio2/widgets/custom_bottom_navigation.dart';

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
        backgroundColor: Colors.black,
        title: const Text('Portafolio'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(currentIndex: 0),

      // BottomNavigationBar para cambiar de pantalla
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // Card en la parte superior del Home
          Card(
            color: Colors.black,
            elevation: 1,
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
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
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
            elevation: 3,
            color: Colors.black,
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
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
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

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acerca de mi',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                  ),

                  Text(
                    'Soy estudiante de ingenieria en sistemas de la Universidad de Margarita (UNIMAR). Me gustan los videojuegos, escuchar musica, pasar tiempo con mis amigos y sobre todo aprender sobre nuevas tecnologias, ademas de varios probar y conocer sobre varios conocimientos de la ing de sistemas.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),

                  Text(
                    'Entre los lenguajes de programacion que eh visto estan: Pascal, C sharp, C++, HTML, CSS (base de desarrollo de paginas web Front - end) y Dart (Flutter). Tambien he trabajado con bases de datos como MySQL. Actualmente estoy enfocado en el desarrollo movil con Flutter y desarrollo de paginas web por medio de Figma.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),

          Text(
            'Hobies y Proyectos',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
          ),
          const SizedBox(height: 20),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(
                    Icons.gamepad,
                    color: Colors.purpleAccent,
                  ),
                  title: const Text(
                    'Videojuegos Favoritos',
                    style: TextStyle(color: Colors.purpleAccent),
                  ),

                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => Navigator.pushNamed(context, '/videojuegos'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(Icons.web, color: Colors.green),
                  title: const Text(
                    'Proyectos Referentes a la Carrera',
                    style: TextStyle(color: Colors.green),
                  ),
                ),

                Text(
                  '- Sistema que simula Onefootball  llamada TwoFootball (C# y MySQL)\n'
                  '- Página Web Informativa de la UNIMAR (HTML y CSS)\n'
                  '- Una Version de Pac-man (C++)\n'
                  '- Diseño UI/UX en Figma para apps móviles y web\n'
                  '- Un sistema que simula el sistema de resevas de Lidotel Margarita (Pascal)\n'
                  '- Una Calculadora sencilla (C#)\n',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Text(
            'Otros Gustos',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent,
            ),
          ),
          const SizedBox(height: 20),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(
                    Icons.ad_units,
                    color: Colors.orangeAccent,
                  ),
                  title: const Text(
                    'Mis Gustos y pasatiempos',
                    style: TextStyle(color: Colors.orangeAccent),
                  ),

                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => Navigator.pushNamed(context, '/pasatiempos'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Text(
            'Versión de la App: 2.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
