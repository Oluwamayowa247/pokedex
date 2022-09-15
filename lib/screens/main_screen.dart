import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/data/pokemondata.dart';
import 'package:pokedex/screens/details_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokedex',
          style: TextStyle(fontFamily: 'Pokemon', color: Colors.black),
        ),
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: ((context, index) {
          final pokemon = pokemons[index];
          return ListTile(
            title: Text(pokemon.name),
            leading: Image.asset('assets/images/small/${pokemon.id}.png'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailsScreen(pokemon: pokemon);
              }));
            } ,
            subtitle: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: pokemon.types
                  .map((e) => Chip(
                        label: Text(e),
                        backgroundColor: const Color(0xFFdfe6e9),
                      ))
                  .toList(),
            ),
            trailing: Column(
              children: [
                const Text(
                  'HIT POINTS',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: kLightGrey),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(pokemon.hitPoints.toString(),
                    style: const TextStyle(
                        fontFamily: 'Pokemon', color: kDarkGrey))
              ],
            ),
          );
        }),
        itemCount: pokemons.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        
      
      ),
      
      ),
    );
  }
}
