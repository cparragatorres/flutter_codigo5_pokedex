import 'package:flutter/material.dart';
import 'package:flutter_codigo5_pokedex/ui/widgets/item_type_widget.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({Key? key}) : super(key: key);

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
            right: -20  ,
            top: MediaQuery.of(context).size.height * 0.2,
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
                          "Bulbasaur",
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
                      "#001",
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
                child: SizedBox(),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
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
