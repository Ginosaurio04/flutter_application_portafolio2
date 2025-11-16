import 'package:flutter/material.dart';
import '../models/menu_options.dart';
import 'package:flutter_application_portafolio2/screens/home_screen.dart';
import 'package:flutter_application_portafolio2/screens/videojuegos_screen.dart';
import 'package:flutter_application_portafolio2/screens/contacto_screen.dart';
import 'package:flutter_application_portafolio2/screens/pasatiempos_screen.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: '/videojuegos',
      icon: Icons.videogame_asset,
      title: 'Videojuegos',
      screen: const VideojuegosScreen(title: 'Videojuegos'),
    ),
    MenuOptions(
      route: '/contacto',
      icon: Icons.contact_mail,
      title: 'Contacto',
      screen: const ContactoScreen(title: 'Contacto'),
    ),
    MenuOptions(
      route: '/pasatiempos',
      icon: Icons.home,
      title: 'Pasatiempos',
      screen: const PasatiemposScreen(title: 'Pasatiempos'),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      '/home': (BuildContext context) => const HomeScreen(title: 'Menú'),
      '/videojuegos': (BuildContext context) =>
          const VideojuegosScreen(title: 'Videojuegos'),
      '/contacto': (BuildContext context) =>
          const ContactoScreen(title: 'Contacto'),
      '/pasatiempos': (BuildContext context) =>
          const PasatiemposScreen(title: 'Pasatiempos'),
    });

    return appRoutes;
  }
}
