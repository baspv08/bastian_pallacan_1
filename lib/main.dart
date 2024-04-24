import 'package:bastian_pallacan_1/Screens/ArmasMuniciones.dart';
import 'package:bastian_pallacan_1/Screens/Contratos.dart';
import 'package:bastian_pallacan_1/Screens/Hoteles.dart';
import 'package:bastian_pallacan_1/Screens/Inicio_De_Sesion.dart';
import 'package:bastian_pallacan_1/Screens/Medico.dart';
import 'package:bastian_pallacan_1/Screens/Pantalla_De_Inicio.dart';
import 'package:bastian_pallacan_1/Screens/Perfil.dart';
import 'package:bastian_pallacan_1/Screens/Servicios.dart';
import 'package:bastian_pallacan_1/Screens/cerraduras.dart';
import 'package:bastian_pallacan_1/Screens/hacker.dart';
import 'package:bastian_pallacan_1/Screens/limpieza.dart';
import 'package:bastian_pallacan_1/Screens/trajes.dart';
import 'package:bastian_pallacan_1/Screens/traslado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.}
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        scaffoldBackgroundColor: Color.fromARGB(255, 72, 13, 13),
        useMaterial3: true,
      ),
      //home: Inicio_De_Sesion(),
      routes: {
        '/': (context) => Inicio_De_Sesion(),
        '/Inicio':(context) => Pantalla_De_Inicio(),
        '/Perfil':(context) => Perfil(),
        '/Contratos':(context) => Contratos(),
        '/Servicios':(context) => Servicios(),
        '/Hoteles':(context) => Hoteles(),
        '/ArmasMuniciones':(context) => armasmuniciones(),
        '/Medico':(context) => medico(),
        '/Trajes':(context) => trajes(),
        '/Limpieza':(context) => limpieza(),
        '/Traslado':(context) => traslado(),
        '/Hacker':(context) => hacker(),
        '/Cerraduras':(context) => cerraduras(),
      },
      initialRoute: '/',
      );
  }
}