import 'package:flutter/material.dart';
import 'package:flutter_codigo5_pokedex/ui/widgets/item_type_widget.dart';

class ItemGridWidget extends StatelessWidget {
  String name;
  String image;
  List<String> type;

  ItemGridWidget({
    required this.name,
    required this.image,
    required this.type,
  });

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
              image,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 4.0,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: type.map<Widget>((e) => ItemTypeWidget(type: e,)).toList(),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
