import 'package:flutter/material.dart';
import 'Firstpage.dart';
import 'Secondpage.dart';
import 'Mainmenu.dart';

class TodaysTodos extends StatefulWidget {
  const TodaysTodos({Key? key}) : super(key: key);

  @override
  State<TodaysTodos> createState() => _TodaysTodosState();
}

class _TodaysTodosState extends State<TodaysTodos> {
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
              child: Container(
                width: 150.0,
                height: 50.0,
                color: Colors.red,
                child: const Text('Water the cat', textAlign: TextAlign.center),
              ),
            ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
              width: 150.0,
              height: 50.0,
              color: Colors.red,
              child: const Text('Buy milk', textAlign: TextAlign.center),
            ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                width: 150.0,
                height: 50.0,
                color: Colors.red,
                child: const Text('Learn Flutter', textAlign: TextAlign.center),
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
                      builder: (context) => MainMenu(),
                    ));
              },
              child: const Text('Back to menu'),
            ),

          ],
        ),

      ),
    );
  }
}