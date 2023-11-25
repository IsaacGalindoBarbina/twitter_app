import 'package:examen/kernel/widgets/navigation/menu.dart';
import 'package:examen/kernel/widgets/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const Splash(title: 'Cargando...'),
        '/menu':(context) => const Menu()
      },
    );
  }
}
