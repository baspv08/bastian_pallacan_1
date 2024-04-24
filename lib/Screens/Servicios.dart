import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Servicios',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 42, 40, 39),
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          Text(
            '¿Qué servicio necesitas?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          const Divider(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              servicios(context, '/ArmasMuniciones', 'assets/ammo.png', Color(0xFF9E9E9E)),
              servicios(context, '/Medico', 'assets/medical.png', Color(0xFF178CC2)),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              servicios(context, '/Trajes', 'assets/bulletproof.png', Color(0xFF1FB08B)),
              servicios(context, '/Limpieza', 'assets/cleaning.png', Color(0xFFD62AA3)),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              servicios(context, '/Traslado', 'assets/transportation.png', Color(0xFFB01F37)),
              servicios(context, '/Hacker', 'assets/cyber.png', Color(0xFFFFFFFF)),
            ],
          ),
          SizedBox(height: 50),
          servicios(context, '/Cerraduras', 'assets/password.png', Color(0xFFDDCE2A)),
        ],
      ),
    );
  }

  Widget servicios(BuildContext context, String route, String assetPath, Color color) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Image.asset(
          assetPath,
          width: 70,
          height: 70,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}