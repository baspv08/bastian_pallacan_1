import 'package:flutter/material.dart';

class Contratos extends StatelessWidget {
  const Contratos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contratos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 42, 40, 39),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          contratos(
            image: 'assets/2.png',
            title: 'Asesinato en el Castillo',
            estado: 'Cerrado',
            monto: '\$30,000',
            ubicacion: 'Castillo Wulff',
            objetivo: 'Jhon Doe',
            riesgo: 9,
          ),
          const Divider(),
          SizedBox(height: 20),
          contratos(
            image: 'assets/3.png',
            title: 'Operación Nocturna',
            estado: 'Abierto',
            monto: '\$12,000',
            ubicacion: 'Distrito Financiero, Ciudad Metrópolis',
            objetivo: 'Richard Thompson',
            riesgo: 7,
          ),
          const Divider(),
          SizedBox(height: 20),
          contratos(
            image: 'assets/4.png',
            title: 'Asesinato en el Desfile',
            estado: 'Abierto',
            monto: '\$10,000',
            ubicacion: 'Calles del Centro, Ciudad del Carnaval',
            objetivo: 'Acabar con el político corrupto',
            riesgo: 2,
          ),
          const Divider(),
          SizedBox(height: 20),
          contratos(
            image: 'assets/5.png',
            title: 'Tormenta en el Desierto',
            estado: 'Cerrado',
            monto: '\$50,000',
            ubicacion: 'Desierto de Gobi, Asia Central',
            objetivo: 'Infiltrarse y desactivar un misil',
            riesgo: 10,
          ),
          const Divider(),
          SizedBox(height: 20),
          contratos(
            image: 'assets/1.png',
            title: 'Secuestro en la Ciudad',
            estado: 'Abierto',
            monto: '\$15,000',
            ubicacion: 'Ciudad',
            objetivo: 'Secuestrar James Bond',
            riesgo: 5,
          ),
          const Divider(),
          Text(
            '...',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget contratos({required String image,required String title,required String estado,required String monto,required String ubicacion,required String objetivo,required int riesgo,}) {
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
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'Estado: $estado',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            Text(
              'Monto: $monto',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            Text(
              'Ubicacion: $ubicacion',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            Text(
              'Objetivo: $objetivo',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
            Text(
              'Riesgo: $riesgo',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
