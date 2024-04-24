import 'package:flutter/material.dart';

class hacker extends StatelessWidget {
  const hacker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'Hacker',
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
          Text('LLamar a "951233522"',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}