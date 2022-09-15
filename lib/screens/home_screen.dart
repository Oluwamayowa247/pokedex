import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRedColor,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/device.png',
              width: 200.0,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Pokedex.png',
              width: 200.0,
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          label: const Text(
            'GET STARTED',
            style: TextStyle(color: Colors.black, fontFamily: 'Pokemon'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
