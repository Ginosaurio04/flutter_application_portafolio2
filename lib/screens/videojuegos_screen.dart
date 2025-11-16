import 'package:flutter/material.dart';

class VideojuegosScreen extends StatelessWidget {
  const VideojuegosScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text(title)),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Card(
                  color: Colors.black,
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
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purpleAccent,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Lista de juegos favoritos y pequeñas descripciones',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/The Last of Us.jpeg'),
                    ),
                    title: const Text(
                      'The Last of Us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    subtitle: const Text('Aventura post-apocalíptica.'),
                    trailing: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'The Last of Us',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent,
                              ),
                            ),
                            content: const Text(
                              'The Last of Us se centra en una devastada América postapocalíptica, veinte años después de que un hongo parásito (Cordyceps) haya mutado a los humanos en criaturas caníbales. La historia sigue a Joel, un superviviente endurecido y contrabandista que perdió a su hija al inicio del brote, y a Ellie, una adolescente que es misteriosamente inmune a la infección. ',
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

                const SizedBox(height: 8),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/God of war 3.jpeg'),
                    ),
                    title: const Text(
                      'God of War 3',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    subtitle: const Text('Acción épica y mitología.'),
                    trailing: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'God of War 3',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent,
                              ),
                            ),
                            content: const Text(
                              'Impulsado por la ira y traicionado por su padre, Zeus, Kratos, ahora aliado con los Titanes, escala el Monte Olimpo para desatar una guerra total contra el panteón griego. En su camino, mata brutalmente a dioses como Poseidón, Hades, Helios y Hera, cuyas muertes desatan el caos y catástrofes naturales en el mundo mortal. Guiado por el espíritu de Atenea, Kratos busca a Pandora y la Caja de Pandora para obtener el poder necesario para destruir a Zeus. ',
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
                const SizedBox(height: 8),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/ff7 boxart - Bing.jpeg',
                      ),
                    ),
                    title: const Text(
                      'Final Fantasy 7',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    subtitle: const Text('RPG clásico con gran historia.'),
                    trailing: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'Final Fantasy 7',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent,
                              ),
                            ),
                            content: const Text(
                              'El juego sigue a Cloud Strife, un exmiembro de la fuerza de élite SOLDADO, que comienza su viaje como mercenario para el grupo ecoterrorista AVALANCHE. Su misión es sabotear los reactores de la megacorporación Shinra Electric Power Company en la ciudad de Midgar, ya que están drenando la energía vital del planeta, conocida como Mako. ',
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

                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/descarga (11).jpeg'),
                    ),
                    title: const Text(
                      'Saga Uncharted',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    subtitle: const Text('Aventura y exploración.'),
                    trailing: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(
                              'Saga Uncharted',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent,
                              ),
                            ),
                            content: const Text(
                              'La saga Uncharted se centra en Nathan "Nate" Drake, un carismático y pícaro cazador de tesoros que afirma ser descendiente del explorador Sir Francis Drake. Junto a su mentor y figura paterna, Victor "Sully" Sullivan, y a menudo con la periodista Elena Fisher o la astuta aventurera Chloe Frazer, Nate viaja por el mundo a ruinas ocultas y ciudades perdidas (como El Dorado, Shambhala e Iram de los Pilares).',
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

                const SizedBox(height: 20),
              ],
            ),
          ),

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
