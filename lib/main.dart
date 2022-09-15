import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/screens/home_screen.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
