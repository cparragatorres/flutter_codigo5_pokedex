import 'package:flutter/material.dart';
import 'package:flutter_codigo5_pokedex/models/pokemon_model.dart';
import 'package:flutter_codigo5_pokedex/ui/widgets/item_data_pokemon_widget.dart';
import 'package:flutter_codigo5_pokedex/ui/widgets/item_type_widget.dart';

class PokemonDetailPage extends StatelessWidget {

  PokemonModel pokemon;
  PokemonDetailPage({required this.pokemon,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48D0B0),
      appBar: AppBar(
        backgroundColor: Color(0xff48D0B0),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            right: -20,
            top: MediaQuery.of(context).size.height * 0.09,
            child: Image.asset(
              'assets/images/pokeball.png',
              width: 200,
              color: Colors.white.withOpacity(0.26),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pokemon.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ItemTypeWidget(type: "Grass"),
                            ItemTypeWidget(type: "Grass"),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "#${pokemon.num}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            const Text(
                              "About Pokemon",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            ItemDataPokemonWidget(),
                            ItemDataPokemonWidget(),
                            ItemDataPokemonWidget(),
                            ItemDataPokemonWidget(),

                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Row(
                                children: [
                                  Text("Multipliers: "),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Chip(
                                      label: Text("1.43"),
                                      elevation: 2,
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      backgroundColor: Colors.white38,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Chip(
                                      label: Text("1.43"),
                                      elevation: 2,
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      backgroundColor: Colors.white38,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Chip(
                                      label: Text("1.43"),
                                      elevation: 2,
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      backgroundColor: Colors.white38,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Positioned.fill(
                        top: -110,
                        //right: MediaQuery.of(context).size.width * 0.35,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.network(
                            pokemon.img,
                            height: 140.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


