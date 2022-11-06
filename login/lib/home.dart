import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  Hmpage createState() => Hmpage();
}

class Hmpage extends State<HomePage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: const FaIcon(FontAwesomeIcons.home),
          title: const Text('Home'),
          shadowColor: Colors.black38,
        ),
        body: const Text('Welcome, User!'),
      );
  }
}