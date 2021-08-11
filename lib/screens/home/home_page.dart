import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemons.dart';
import 'package:pokedex_detalhes/screens/home/widgets/details.dart';
import 'package:pokedex_detalhes/screens/home/widgets/types.dart';
import 'package:pokedex_detalhes/style.dart';

class HomePage extends StatelessWidget {
  final pokemon = Pokemon(
    name: "Charmander",
    photo: "assets/charmander.png",
    number: 004,
    description:
        "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
    height: 0.6,
    type: "Fogo",
    weight: 8.5,
    skill: "Chama",
    weaknesses: [
      "Água",
      "Terra",
      "Rocha",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(
          pokemon.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Image.asset(
          "assets/logo.png",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Image.asset(pokemon.photo),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Text(
                pokemon.description,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Details(pokemon),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16,
                  ),
                  child: Text(
                    "Fraquezas",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Types(
                  colorType: blueTheme,
                  type: "Água",
                ),
                Types(
                  colorType: yellowTheme,
                  type: "Terra",
                ),
                Types(
                  colorType: darkYellowTheme,
                  type: "Rocha",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
