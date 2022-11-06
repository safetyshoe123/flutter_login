import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/home.dart';
import 'package:login/register.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  Logpage createState() => Logpage();
}

class Logpage extends State<LoginPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.lock),
          title: const Text('Login'),
        ),
        body: const Logname(),
      );
  }
}

class Logname extends StatelessWidget {
    const Logname({super.key});

    @override
    Widget build(BuildContext context){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: FaIcon(FontAwesomeIcons.user),
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: FaIcon(FontAwesomeIcons.userLock),
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password',
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.blue,
                side: const BorderSide(width:3, color:Colors.blue), //border width and color
                elevation: 3, //elevation of button
                shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(30)
                ),// foreground
              ), 
              onPressed: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
            );
               },
              child: const Align(alignment: Alignment.center,
                child: Text('Login'),
              )
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, 
                disabledForegroundColor: Colors.red.withOpacity(0.38),
              ),
              onPressed: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
              },
              child: const Align(alignment: Alignment.center,
                child: Text('Dont have an account? Register')
                ),
            )
          ],
        );
    }
  }