import 'package:flutter/material.dart';

import 'package:pokedex_detalhes/style.dart';

class Types extends StatelessWidget {
  final Color colorType;
  final String type;

  const Types({
    required this.colorType,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorType,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      child: Row(
        children: [
          Text(
            this.type,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
