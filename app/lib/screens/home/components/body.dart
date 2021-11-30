import 'package:app/constants.dart';
import 'featured_plants.dart';
import 'plant_recom_list.dart';
import 'title_with_more_button.dart';
import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          PlantRecomList(),
          TitleWithMoreButton(title: "Features Plants", press: () {}),
          FeaturedPlantList(),
          SizedBox(height: AppDefaultPadding,)
        ],
      ),
    );
  }
}

