import 'package:flutter/material.dart';
import 'Firstpage.dart';
import 'Secondpage.dart';
import 'Todaystodos.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      builder: (context) => TodaysTodos(),
                    ));
              },
              child: const Text('View to-dos'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       //The 0s are values for turnCounter and rightCounter, to reset them when new game starts:
                //       builder: (context) => FirstPage(),
                //     ));
              },
              child: const Text('Button 2'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       //The 0s are values for turnCounter and rightCounter, to reset them when new game starts:
                //       builder: (context) => FirstPage(),
                //     ));
              },
              child: const Text('Button 3'),
            ),

          ],
        ),

      ),
    );
  }
}