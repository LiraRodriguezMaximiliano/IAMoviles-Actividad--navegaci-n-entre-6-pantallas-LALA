import 'package:flutter/material.dart';

class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leche LALA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFB71C1C),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(flex: 2, child: Text('Leche Entera LALA: 100% pura de vaca, ultrapasteurizada y deliciosa.', style: TextStyle(fontSize: 16))),
                  Expanded(flex: 1, child: Text('\$25.50', textAlign: TextAlign.right, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue))),
                ],
              ),
              const SizedBox(height: 20),
              Image.network('https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/L1.png', height: 250),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red), onPressed: null, child: const Text('Añadir al carro', style: TextStyle(color: Colors.white)))),
                  const SizedBox(width: 10),
                  Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), onPressed: null, child: const Text('Comprar', style: TextStyle(color: Colors.white)))),
                ],
              ),
              const SizedBox(height: 30),
              const Align(alignment: Alignment.centerLeft, child: Text('Reseñas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
              const SizedBox(height: 10),
              Container(
                width: double.infinity, padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Un usuario', style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20))),
                    const Text('Gran producto', style: TextStyle(fontStyle: FontStyle.italic)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton(onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')), child: const Text("Volver al Inicio")),
            ],
          ),
        ),
      ),
    );
  }
}