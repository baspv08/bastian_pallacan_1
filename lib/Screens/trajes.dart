import 'package:flutter/material.dart';

class trajes extends StatelessWidget {
  const trajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Trajes Antibalas',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
            backgroundColor: Color.fromARGB(255, 42, 40, 39),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 42, 40, 39),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    texto('Nombre del Servicio:', 'The Tailor'),
                    texto('Lugar:', 'The Continental'),
                    texto('Tipo de Servicio:', 'Trajes Antibalas'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    texto('Encargado:', 'Sastre'),
                    texto('Horario:', '12:00PM - 12:00AM'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          const Divider(),
          armasymuniciones('assets/trajes1.png', 'Chaleco Rig Dach', 'Practico y Versatil'),
          armasymuniciones('assets/trajes2.png', 'Chaleco Centurion', 'Resistente y Completo'),
          armasymuniciones('assets/trajes3.png', 'Chaqueta Formin', 'Simple y Comodo'),
          armasymuniciones('assets/trajes4.png', 'Chaqueta Special', 'Calidad y Funcionalidad'),
          armasymuniciones('assets/trajes5.png', ' MBAV', 'Calidad y Funcionalidad'),
        ],
      ),
    );
  }

  Widget texto(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget armasymuniciones(String image, String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 100,
              height: 50,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}