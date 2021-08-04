import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/screens/home/widgets/details.dart';
import 'package:pokedex_detalhes/style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        title: Text(
          "Charmander #004",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Image.asset("assets/logo.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Text(
                "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
              ),
            ),
            Details(),
          ],
        ),
      ),
    );
  }
}
