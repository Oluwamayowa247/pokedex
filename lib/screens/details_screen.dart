import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/models/pokemonmodel.dart';

class DetailsScreen extends StatelessWidget {
  final Pokemon pokemon;
  const DetailsScreen({Key? key, required this.pokemon}) : super(key: key);
  Widget _renderState(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: kLightGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: const TextStyle(
              color: kDarkGrey ,
              fontSize: 28,
              fontWeight: FontWeight.w400,
              letterSpacing: 5,
              fontFamily: 'Pokemon'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: kRedColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                pokemon.name,
                style: const TextStyle(
                    fontFamily: 'Pokemon',
                    fontSize: 33,
                    color: Colors.white,
                    letterSpacing: 3),
              ),
              Image.asset('assets/images/large/${pokemon.id}.png'),
              const SizedBox(
                height: 30,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      _renderState('Hit Points', pokemon.hitPoints.toString()),
                      _renderState('Attack', pokemon.attack.toString()),
                      _renderState('Defense', pokemon.defense.toString()),
                      _renderState('Speed', pokemon.speed.toString()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
