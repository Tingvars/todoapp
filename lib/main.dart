import 'package:flutter/material.dart';
import 'dart:math';
import 'Firstpage.dart';
import 'Secondpage.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFCF788)),
    home: FirstPage(),
  ),
  );
}