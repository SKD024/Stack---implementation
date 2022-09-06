import 'package:flutter/material.dart';
import 'Widgets/Home_widget.dart';

void main() {
  runApp(const MyApp());//run app return widgets, attaching widgets to the app
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

