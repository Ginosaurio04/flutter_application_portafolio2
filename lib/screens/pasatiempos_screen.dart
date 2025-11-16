import 'package:flutter/material.dart';

class PasatiemposScreen extends StatelessWidget {
  const PasatiemposScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                // Card 1: FC Barcelona
                Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              leading: const CircleAvatar(
                radius: 28,
                // Replace the asset path below with your FC Barcelona logo file
                backgroundImage: AssetImage('assets/descarga (12).jpeg'),
              ),
              title: const Text(
                'FC Barcelona',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 250, 3, 3),
                ),
              ),
              subtitle: const Text('Club de fútbol — mi equipo favorito'),
              trailing: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'FC Barcelona',
                        style: TextStyle(
                          color: Color.fromARGB(255, 19, 3, 250),
                        ),
                      ),
                      content: const Text(
                        'El Fútbol Club Barcelona, conocido popularmente como el Barça, es una de las instituciones deportivas más grandes y exitosas del mundo, fundada en 1899 en Barcelona, Cataluña, España. Su lema es "Més que un club" ("Más que un club"), que refleja su fuerte arraigo social, cultural e identitario, siendo propiedad de sus más de 140.000 socios.',
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
            ),
          ),

          // Card 2: Canciones favoritas
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Canciones favoritas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // Replace these Text widgets with your actual favorite songs
                  const Text('1. Locked Out of Heaven — Bruno Mars'),
                  const Text('2. Tuyo — Mora'),
                  const Text('3. Todo de ti — Rauw Alejandro'),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 3: Equipo de la universidad
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              leading: const Icon(
                Icons.sports_soccer,
                size: 36,
                color: Colors.green,
              ),
              title: const Text(
                'Equipo Universidad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              subtitle: const Text('RoyalGunners FC'),
            ),
                ),
              ],
            ),
          ),

          // Footer pinned to bottom (uses SafeArea to avoid system intrusions)
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Versión de la App: 2.0.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
