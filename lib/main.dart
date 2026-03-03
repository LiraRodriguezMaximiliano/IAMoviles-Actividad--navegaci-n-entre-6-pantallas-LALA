import 'package:flutter/material.dart';
import 'package:myapp/widgets/PaginaDos.dart';
import 'package:myapp/widgets/PaginaTres.dart';
import 'package:myapp/widgets/PaginaUno.dart';
import 'package:myapp/widgets/login_page.dart';
import 'package:myapp/widgets/pagina_no_lacteos.dart';
import 'package:myapp/widgets/registro_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lala App',
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaUno(),
        '/productos': (context) => const PaginaDos(),
        '/no_lacteos': (context) => const PaginaNoLacteos(),
        '/detalle': (context) => const PaginaTres(),
        '/login': (context) => const LoginPage(),
        '/registro': (context) => const RegistroPage(),
      },
    );
  }
}