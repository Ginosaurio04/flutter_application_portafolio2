import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// Removed unused import to avoid circular/unused import issues

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key, required this.title});

  final String title;

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  Future<void> _launchURL(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    try {
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No se pudo abrir la URL')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al abrir la URL: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.teal),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Índice del elemento seleccionado
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
              Navigator.pushNamed(context, '/videojuegos');
              break;
            case 2:
              // Ya estamos en Contacto
              break;
          }
        },
      ),

      body: ListView(
        children: <Widget>[
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(
                    Icons.alternate_email,
                    color: Colors.purpleAccent,
                  ),
                  title: const Text('GitHub'),
                  subtitle: const Text('Ginosaurio04'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () =>
                      _launchURL(context, 'https://github.com/Ginosaurio04'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
