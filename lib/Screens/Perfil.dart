import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Perfil',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
            backgroundColor: Color.fromARGB(255, 42, 40, 39),
          ),
        body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          Center(
            child: Image.asset(
              'assets/zero2.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(height: 20),
          Text('Zero',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          const Divider(),
          SizedBox(height: 20),
          Text('"Tú y yo dejamos atrás una buena vida hace mucho tiempo, amigo mío"',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '155',
                style:  TextStyle(fontSize: 24, color: Colors.white),
              ),
              VerticalDivider(),
              Text(
                '30',
                style:  TextStyle(fontSize: 24, color: Colors.white),
              ),
               VerticalDivider(),
              Text(
                '5',
                style:  TextStyle(fontSize: 24, color: Colors.white),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '   Asesinatos',
                style:  TextStyle(fontSize: 13, color: Colors.white),
              ),
              VerticalDivider(),
              Text(
                'Contratos',
                style:  TextStyle(fontSize: 13, color: Colors.white),
              ),
               VerticalDivider(),
              Text(
                'Prestigio',
                style:  TextStyle(fontSize: 13, color: Colors.white),
              )
            ],
          ),
        SizedBox(height: 20),
        const Divider(),
        SizedBox(height: 20),
        Text('Email:  zero@thecontinental.jp',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 20),
        Text('Nacido:  Japon',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 20),
        Text('Edad: 46',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 20),
        Text('Habilidades: Condición física, Sigilo, Maestría, Artes marciales, Espadachín, Tirador experto, Cocinero, Dominio De Idiomas',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(height: 20),
        const Divider(),
        ],
      
      ),    
    );
  }
}