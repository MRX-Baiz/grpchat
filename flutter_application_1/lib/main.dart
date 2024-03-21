import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screens/Sign_in_screen.dart';
import 'package:flutter_application_1/screens/chat_screen.dart';
import 'package:flutter_application_1/screens/sign_up_screen.dart';
import 'screens/wlcmscreen.dart';

void main() {
    debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: wlcmscreen(),
      routes: {
          'wlcmscreen':(context) => wlcmscreen(),
          'Sign_in_screen':(context) => Signinscreen(),
          'sign_up_screen':(context) => Signupscreen(),
          'chat_screen':(context) => chatscreen(),



        // wlcmscreen.screenRoute : (context)=> wlcmscreen(),
        // Signinscreen.screenRoute : (context)=> Signinscreen(),
        // Signupscreen.screenRoute : (context)=> Signupscreen(),
        // chatscreen.screenRoute : (context)=> chatscreen(),
        


      }
      ,
    );
  }
}
