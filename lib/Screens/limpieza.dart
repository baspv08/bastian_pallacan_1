import 'package:flutter/material.dart';

class limpieza extends StatelessWidget {
  const limpieza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Limpieza',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)
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
                    texto('Nombre del Servicio:', 'Limpieza'),
                    texto('Lugar:', 'The Continental'),
                    texto('Tipo de Servicio:', 'Artefactos médicos'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    texto('Encargado:', 'Doctor'),
                    texto('Horario:', '24/7'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          const Divider(),
          armasymuniciones('assets/bolsa.png', 'Esterilizar instrumentos', 'Limpiar superficie del armamento'),
          armasymuniciones('assets/lavartraje.png', 'Lavar uniformes', 'Limpiar la ropa utilizada'),
          armasymuniciones('assets/ambiente.png', 'Desodorizar ambientes', 'Eliminar malos olores del entorno'),
          armasymuniciones('assets/biologicos.png', 'Eliminar residuos biológicos', 'Limpiar materiales biológicos peligrosos'),
          armasymuniciones('assets/limpiezaauto.png', 'Descontaminar vehículos', 'Limpiar agentes contaminantes del auto '),
          armasymuniciones('assets/limp.png', 'Desinfectar áreas de trabajo', 'Limpiar y proteger espacios utilizados'),
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
