
import 'package:flutter/material.dart';

class ItemDataPokemonWidget extends StatelessWidget {
  const ItemDataPokemonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "Height: ",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          Text("0.71 m"),
        ],
      ),
    );
  }
}