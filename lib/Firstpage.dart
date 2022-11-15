import 'package:flutter/material.dart';
import 'Firstpage.dart';
import 'Secondpage.dart';
import 'Mainmenu.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "GRAMMAR VIKING 1",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Viking', fontSize: 29, color: Colors.brown[700]),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //The 0s are values for turnCounter and rightCounter, to reset them when new game starts:
                      builder: (context) => MainMenu(),
                    ));
              },
              child: const Text('To Menu'),
            ),

          ],
        ),

      ),
    );
  }
}