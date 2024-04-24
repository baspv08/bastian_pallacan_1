import 'package:flutter/material.dart';

class cerraduras extends StatelessWidget {
  const cerraduras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Cerraduras',
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
              'assets/llamar.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(height: 20),
          Text('LLamar a "950223342"',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}