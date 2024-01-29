import 'package:flutter/material.dart';
import 'package:flutter_chat/view/Login_Page/fill_email.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      home: fill_email(),
    );
  }
}
