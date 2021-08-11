import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/screens/home/widgets/types.dart';
import 'package:pokedex_detalhes/style.dart';

class Details extends StatelessWidget {
  final _pokemonObj;

  Details(this._pokemonObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blueTheme,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Altura",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  "${_pokemonObj.height}m",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  bottom: 10,
                ),
                child: Text(
                  "Tipo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Types(
                colorType: orangeTheme,
                type: "${_pokemonObj.type}",
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Peso",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  "${_pokemonObj.weight} kg",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  bottom: 5,
                ),
                child: Text(
                  "Habilidade",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "${_pokemonObj.skill}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
