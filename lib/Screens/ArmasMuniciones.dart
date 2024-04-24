import 'package:flutter/material.dart';

class armasmuniciones extends StatelessWidget {
  const armasmuniciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Armas y Municiones',
          style: TextStyle(color: Colors.white),
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
                    texto('Nombre del Servicio:', 'Arsenal'),
                    texto('Lugar:', 'The Continental'),
                    texto('Tipo de Servicio:', 'Armas y Munición'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    texto('Encargado:', 'Sommelier'),
                    texto('Horario:', '12:00PM - 4:00AM'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          const Divider(),
          armasymuniciones('assets/ak47.png', 'AK-47', 'Municion: 7,62 x 39mm'),
          armasymuniciones('assets/m4.png', 'M4', 'Municion: 5.56 × 45 mm'),
          armasymuniciones('assets/revolver.png', 'Revolver', 'Municion: 44.Magnum'),
          armasymuniciones('assets/glock.png', 'Glock', 'Municion: 9mm'),
          armasymuniciones('assets/glock17.png', 'Glock 17', 'Municion: 9mm'),
          armasymuniciones('assets/fusil.png', 'Rifle MSR', 'Municion: 5.56 × 45 mm'),
          armasymuniciones('assets/fusil1.png', 'Fusil BCM Carbine 780-790', 'Municion: 5.56 × 45 mm'),
          armasymuniciones('assets/francotirador.png', 'Francotirador MB4403D', 'Municion: .338'),
          armasymuniciones('assets/francotirador1.png', 'Fusil Chiang Kai-Shek', 'Municion: .338'),
          armasymuniciones('assets/escopeta.png', 'Escopeta M870', 'Municion: Calibre 12'),
          armasymuniciones('assets/balasescopeta.png', 'Calibre.12', 'Cantidad: 100'),
          armasymuniciones('assets/balas.png', '.338', 'Cantidad: 100'),
          armasymuniciones('assets/balasfusil.png', '5.56 × 45 mm', 'Cantidad: 100'),
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
