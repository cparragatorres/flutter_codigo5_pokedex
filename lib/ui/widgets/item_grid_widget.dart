

import 'package:flutter/material.dart';

class ItemGridWidget extends StatelessWidget {
  const ItemGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4ACFB0),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -24,
            right: -14,
            child: Image.asset(
              'assets/images/pokeball.png',
              height: 120,
              color: Colors.white.withOpacity(0.27),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.network(
              "http://www.serebii.net/pokemongo/pokemon/001.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20.0, horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bulbasaur",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 6.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.27),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 8,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "Grass",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
