import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_portafolio2/widgets/custom_bottom_navigation.dart';
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
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.black),

      bottomNavigationBar: const CustomBottomNavigation(currentIndex: 1),

      body: ListView(
        children: <Widget>[
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
                    'OPCIONES DE CONTACTO',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Aquí puedes ver varias opciones de contacto.'),
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
