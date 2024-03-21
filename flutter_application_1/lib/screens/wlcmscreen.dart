import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Sign_in_screen.dart';
import 'package:flutter_application_1/screens/sign_up_screen.dart';
import 'package:flutter_application_1/widgets/my_button.dart';

class wlcmscreen extends StatefulWidget {
  static const String screenRoute = 'wlcmscreen';

  const wlcmscreen({super.key});

  @override
  State<wlcmscreen> createState() => _wlcmscreenState();
}

class _wlcmscreenState extends State<wlcmscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Our Chatapp'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[250],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset('images/hoa.png'),
                ),
                Text(
                  'Our_Mail_Box',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  height: 20,
                ),
                Mybutton(
                  color: Colors.purple,
                  title: 'sign in',
                  onPressed: () {
                    Navigator.pushNamed(context, Signinscreen.screenRoute);
                  },
                ),
                Mybutton(
                    color: Colors.purple,
                    title: 'sign up',
                    onPressed: () {
                      Navigator.pushNamed(context, Signupscreen.screenRoute);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
