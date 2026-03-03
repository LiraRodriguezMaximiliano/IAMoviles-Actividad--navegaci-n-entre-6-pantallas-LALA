import 'package:flutter/material.dart';

class PaginaNoLacteos extends StatelessWidget {
  const PaginaNoLacteos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        title: const Text('Productos NO Lácteos', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF556B2F), // Verde Oliva / Café oscuro
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(Icons.eco), // Icono de ecología/planta
          SizedBox(width: 15),
          Icon(Icons.filter_alt), // Icono de filtro
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _tarjeta("Tocino LALA", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Tocino.jpg", "\$22.00"),
          _tarjeta("Jugo LALA", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Jugo.jpg", "\$45.00"),
          _tarjeta("Jamon LALA", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Jamon.jpg", "\$12.00"),
        ],
      ),
    );
  }

  Widget _tarjeta(String nombre, String url, String precio) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(nombre, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Image.network(url, height: 180, fit: BoxFit.contain),
            Text(precio, style: const TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: null,
              child: const Text('AGOTADO', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}