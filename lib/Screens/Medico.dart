import 'package:flutter/material.dart';

class medico extends StatelessWidget {
  const medico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Medico',
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
                    texto('Nombre del Servicio:', 'Hospital'),
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
          armasymuniciones('assets/morfina.png', 'Morfina', 'Analgésico potente'),
          armasymuniciones('assets/suero.png', 'Suero', 'Solución estéril'),
          armasymuniciones('assets/antibioticos.png', 'Antibióticos', 'Combate infecciones'),
          armasymuniciones('assets/gasas.png', 'Gasas', 'Limpieza de heridas'),
          armasymuniciones('assets/yodo.png', 'Yodo', 'Desinfectante'),
          armasymuniciones('assets/ataduras.png', 'Ataduras', 'Presión heridas'),
          armasymuniciones('assets/collarin.png', 'Collarín', 'Estabiliza columna'),
          armasymuniciones('assets/oxigeno.png', 'Oxígeno', 'Respiración'),
          armasymuniciones('assets/desfibrilador.png', 'Desfibrilador', 'Ritmo cardíaco'),
          armasymuniciones('assets/ferulas.png', 'Férulas', 'Inmovilización fracturas'),
          armasymuniciones('assets/analgesicos.png', 'Analgésico', 'Alivia dolor'),
          armasymuniciones('assets/camilla.png', 'Camilla', 'Transporte pacientes'),
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