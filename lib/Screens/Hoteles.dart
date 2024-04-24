import 'package:flutter/material.dart';

class Hoteles extends StatelessWidget {
  const Hoteles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hoteles',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Color.fromARGB(255, 42, 40, 39),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          hoteles(
            image: 'assets/Nyc.png',
            name: 'New York City Continental',
            distance: '2 KM',
            amenities: [
              'Vestibulo/Recepcion - Armeria - Bar',
              'Salon - Peluqueria - Sala de billar',
              'Clandestino - Azotea',
            ],
          ),
          const Divider(),
          SizedBox(height: 20),
          hoteles(
            image: 'assets/roma.png',
            name: 'Rome Continental',
            distance: '6.873 KM',
            amenities: [
              'Vestibulo/Recepcion - Armeria - Sasteria',
              'Cartografia - Libros - Bar',
            ],
          ),
          const Divider(),
          SizedBox(height: 20),
          hoteles(
            image: 'assets/casablanca.png',
            name: 'Casablanca Continental',
            distance: '5.801 KM',
            amenities: [
              'Vestibulo/Recepcion - Salon - Exposiciones',
              'Cocina - Techo - Jardin del Santuario',
            ],
          ),
          const Divider(),
          SizedBox(height: 20),
          hoteles(
            image: 'assets/osaka.png',
            name: 'Osaka Continental',
            distance: '11.154',
            amenities: ['Oficina Gerente'],
          ),
          const Divider(),
          SizedBox(height: 5),
          Text(
            '...',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget hoteles({required String image,required String name,required String distance,required List<String> amenities,}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 100,
          height: 100,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              distance,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            for (var amenity in amenities)
              Text(
                amenity,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
          ],
        )
      ],
    );
  }
}