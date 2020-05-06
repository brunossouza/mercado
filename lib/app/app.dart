import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado',
      theme: ThemeData(
        primaryColor: Color(0xFF612E72),
        primaryColorLight: Color(0xFF905AA1),
        primaryColorDark: Color(0xFF340246),
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (cxt) => HomeScreen(),
      },
    );
  }
}
