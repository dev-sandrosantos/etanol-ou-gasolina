import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etanol ou Gasolina',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
