import 'package:flutter/material.dart';

class Inicio_De_Sesion extends StatelessWidget {
  const Inicio_De_Sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Inicio De Sesion',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
            backgroundColor: Color.fromARGB(255, 42, 40, 39),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text(
                'Bienvenido Asesino',
                style: TextStyle(
                  fontSize: 35,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold
                ),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Correo Electronico',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Ingresar correo electronico',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.email,
                          color: Colors.white
                          ),
                          border: OutlineInputBorder()
                        ),
                        onChanged: (String value) {
                                    
                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Porfavor ingrese su correo electronico' : null;
                        },
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Ingresar Contraseña',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.password,
                          color: Colors.white
                          ),
                          border: OutlineInputBorder()
                        ),
                        onChanged: (String value) {
                                    
                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Porfavor ingrese su contraseña' : null;
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.pushNamed(context, '/Inicio');
                        },
                        child: Text('Iniciar Sesion'),
                        color: Color.fromARGB(255, 42, 40, 39),
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/favicon.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50),
            ],
          ),
          ),
        ),
      ),
    );
  }
}