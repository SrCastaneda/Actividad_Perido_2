import 'package:ejercicio_practico_ev2/pages/principalApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyExcercise());
}
class MyExcercise extends StatelessWidget {
  const MyExcercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: principalApp(),
    );
  }
}

