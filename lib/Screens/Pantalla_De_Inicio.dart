import 'package:flutter/material.dart';

class Pantalla_De_Inicio extends StatelessWidget {
  const Pantalla_De_Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 42, 40, 39),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/zero.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  onPressed: () => Navigator.pushNamed(context, '/Perfil'),
                  icon: Icons.person_2_rounded,
                ),
                Button(
                  onPressed: () => Navigator.pushNamed(context, '/Contratos'),
                  icon: Icons.assignment,
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  onPressed: () => Navigator.pushNamed(context, '/Servicios'),
                  icon: Icons.room_service_outlined,
                ),
                Button(
                  onPressed: () => Navigator.pushNamed(context, '/Hoteles'),
                  icon: Icons.home_work,
                ),
              ],
            ),
            SizedBox(height: 50),
            Image.asset(
              'assets/continental.png',
              width: 200,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget Button({required VoidCallback onPressed, required IconData icon}) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 50,
          color: Color.fromARGB(255, 42, 40, 39),
        ),
      ),
    );
  }
}