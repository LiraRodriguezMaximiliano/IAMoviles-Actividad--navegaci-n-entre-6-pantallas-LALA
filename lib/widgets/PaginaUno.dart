import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LALA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menú LALA', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.blue),
              title: const Text('Productos Lácteos'),
              onTap: () { Navigator.pop(context); Navigator.pushNamed(context, '/productos'); },
            ),
            ListTile(
              leading: const Icon(Icons.fastfood, color: Colors.orange),
              title: const Text('Productos No Lácteos'),
              onTap: () { Navigator.pop(context); Navigator.pushNamed(context, '/no_lacteos'); },
            ),
            const ListTile(leading: Icon(Icons.menu_book), title: Text('Recetas')),
            const ListTile(leading: Icon(Icons.rate_review), title: Text('Reseñas')),
            const ListTile(leading: Icon(Icons.shopping_basket), title: Text('Carrito')),
            const ListTile(leading: Icon(Icons.person), title: Text('Perfil')),
            const ListTile(leading: Icon(Icons.local_shipping), title: Text('Mis Pedidos')),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenido a Lala', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue)),
            const SizedBox(height: 20),
            Image.network('https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Chayanne.jpg', height: 180),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: _botonCuadrado("Iniciar\nSesión", Colors.blue),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/registro'),
                  child: _botonCuadrado("Registrarse", Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50, color: Colors.red,
        child: const Center(child: Text('© 2026 Maximiliano Lira', style: TextStyle(color: Colors.white))),
      ),
    );
  }

  Widget _botonCuadrado(String texto, Color color) {
    return Container(
      width: 140, height: 140,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(child: Text(texto, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
    );
  }
}