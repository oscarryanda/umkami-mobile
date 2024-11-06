import 'package:umkami/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 236, 245, 66), 
          secondary: const Color.fromARGB(255, 65, 255, 48), 
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}