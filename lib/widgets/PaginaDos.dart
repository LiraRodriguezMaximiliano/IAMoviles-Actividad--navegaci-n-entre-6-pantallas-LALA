import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        title: const Text('Productos Lácteos', style: TextStyle(color: Color(0xFF00008B))),
        backgroundColor: const Color(0xFFD2B48C),
        iconTheme: const IconThemeData(color: Color(0xFF00008B)),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _tarjeta(context, "Leche Entera LALA", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/L1.png", "\$25.50", true),
          _tarjeta(context, "Yogurt Lala Fresa", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Yogurt.png", "\$18.00", false),
          _tarjeta(context, "Queso Panela Lala", "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Queso.png", "\$65.00", false),
        ],
      ),
    );
  }

  Widget _tarjeta(BuildContext context, String nombre, String url, String precio, bool funcional) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(nombre, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Image.network(url, height: 180, fit: BoxFit.contain),
            Text(precio, style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: funcional ? const Color(0xFF00008B) : Colors.grey),
              onPressed: funcional ? () => Navigator.pushNamed(context, '/detalle') : null,
              child: Text(funcional ? 'Ver producto' : 'Agotado', style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}