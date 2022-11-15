import 'package:flutter/material.dart';
import 'Firstpage.dart';
import 'Secondpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                "GRAMMAR VIKING 2",
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
                      builder: (context) => FirstPage(),
                    ));
              },
              child: const Text('Back to first'),
            ),

          ],
        ),

      ),
    );
  }
}