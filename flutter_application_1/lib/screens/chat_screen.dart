import 'package:flutter/material.dart';

class chatscreen extends StatefulWidget {
  static const String screenRoute='chat_screen';

  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Row(
          children: [
            Image.asset('images/disc.png', height: 25),
            SizedBox(
              width: 10,
            ),
            Text('Our-Disc',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: 'OverlockSC')),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                //add here logout_fct
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.blueAccent, width: 2),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        hintText: 'Write your message ...',
                        border: InputBorder.none),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'send',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
