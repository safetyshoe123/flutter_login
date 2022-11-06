import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  Regpage createState() => Regpage();
}

class Regpage extends State<RegisterPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: const FaIcon(FontAwesomeIcons.idCard),
          title: const Text('Register'),
          shadowColor: Colors.black38,
        ),
        body: const Regname(),
      );
  }
}

class Regname extends StatelessWidget {
    const Regname({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: FaIcon(FontAwesomeIcons.userLock),
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm password',
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
                const snackBar = SnackBar(content: Text('Processing Registration'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
               },
              child: const Align(alignment: Alignment.center,
                child: Text('Register'),
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
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
              },
              child: const Align(alignment: Alignment.center,
                child: Text('Already have an account? Login')
                ),
            )
          ],
        );
    }
  }