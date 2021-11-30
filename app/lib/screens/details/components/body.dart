import 'package:app/constants.dart';
import 'package:app/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';

import 'image_and_item_cards.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          ImageAndItemCards(size: size),
          TitleAndPrice(title: "Plant 1", country: "Pakistan", price: 500),
          
        ],
      ),
    );
  }
}

