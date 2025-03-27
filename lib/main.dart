import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Empleado {
  final int idempleado;
  final String puesto;
  final String gmail;
  final String direccion;
  final String nombre;

  Empleado({
    required this.idempleado,
    required this.puesto,
    required this.gmail,
    required this.direccion,
    required this.nombre,
  });
}

class MyApp extends StatelessWidget {
  final List<Empleado> empleados = [
    Empleado(
      idempleado: 1,
      puesto: 'Desarrollador',
      gmail: 'juan.perez@example.com',
      direccion: 'Calle Falsa 123',
      nombre: 'Juan Pérez',
    ),
    Empleado(
      idempleado: 2,
      puesto: 'Diseñador UX',
      gmail: 'ana.gomez@example.com',
      direccion: 'Avenida Siempreviva 742',
      nombre: 'Ana Gómez',
    ),
    // Agrega más empleados aquí
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Empleados',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Empleados'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: empleados.map((empleado) {
              return Container(
                margin: EdgeInsets.only(bottom: 16.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${empleado.idempleado}',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Puesto: ${empleado.puesto}'),
                    Text('Gmail: ${empleado.gmail}'),
                    Text('Dirección: ${empleado.direccion}'),
                    Text('Nombre: ${empleado.nombre}'),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
