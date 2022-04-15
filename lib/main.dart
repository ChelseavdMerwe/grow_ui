import 'package:flutter/material.dart';
import 'package:grow_app_mobile/screens/welcome_screen.dart';

void main() {
  runApp(GrowApp());
}

class GrowApp extends StatelessWidget {
  const GrowApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,

      home:  WelcomeScreen()
    );
  }
}