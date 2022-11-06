import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'register.dart';
import 'home.dart';
// if error bacause of CUSTUMBUILD : error: Cannot run with sound null safety, type this command:
//flutter run --no-sound-null-safety

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
      brightness: Brightness.dark),
      home: const LoginPage(),
    );
  }
  }

  