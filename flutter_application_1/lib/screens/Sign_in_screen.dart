import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat_screen.dart';
import 'package:flutter_application_1/widgets/my_button.dart';

class Signinscreen extends StatefulWidget {
  static const String screenRoute='Signinscreen';

  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Container(
            height: 190,
            child: Image.asset('images/hiiya.png',),
          ),
          SizedBox(height: 50,),
          TextField(
            onChanged:(value) {},
            decoration: InputDecoration(hintText: 'Enter Your Email',contentPadding: EdgeInsets.symmetric(horizontal: 20,
            vertical: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            enabledBorder:
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent,
              width: 1),
              borderRadius: 
              BorderRadius.all(Radius.circular(10))
            ),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color:Colors.blue,
              width: 2),
              borderRadius: 
              BorderRadius.all(Radius.circular(10))
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged:(value) {},
            decoration: InputDecoration(hintText: 'Enter your Password',contentPadding: EdgeInsets.symmetric(horizontal: 20,
            vertical: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            enabledBorder:
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent,
              width: 1),
              borderRadius: 
              BorderRadius.all(Radius.circular(10))
            ),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color:Colors.blue,
              width: 2),
              borderRadius: 
              BorderRadius.all(Radius.circular(10))
            ),
            ),
          ),
          SizedBox(height: 10,),
          Mybutton(color: Colors.blueAccent, title: 'Sign In', onPressed: (){
                    Navigator.pushNamed(context, chatscreen.screenRoute);

          })
        ],),
      ),
    );
  }
}