import 'package:flutter/material.dart';
import 'package:tokowee_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokoWee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
       primarySwatch: Colors.blueGrey,
       ).copyWith(secondary: Colors.blueGrey[800]),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}