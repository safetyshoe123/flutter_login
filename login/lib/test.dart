import 'package:flutter/material.dart';

class TestPage extends StatefulWidget{
  const TestPage({super.key});

  @override
  Testpage createState() => Testpage();
}

class Testpage extends State<TestPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        
        appBar: AppBar(
          title: const Text('Test'),
        ),
      );
  }
}