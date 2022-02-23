import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class FeaturedPlantList extends StatelessWidget {
  const FeaturedPlantList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: <Widget>[
          FeaturePlantCard(image: "assets/images/plant1.jpg.png", press: () {}),
          FeaturePlantCard(image: "assets/images/plant2.jpg", press: () {}),
          FeaturePlantCard(image: "assets/images/plant1.jpg.png", press: () {}),
          FeaturePlantCard(image: "assets/images/plant1.jpg.png", press: () {}),
          FeaturePlantCard(image: "assets/images/plant1.jpg.png", press: () {}),
          SizedBox(
            width: AppDefaultPadding,
          )
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          top: AppDefaultPadding / 2,
          left: AppDefaultPadding,
          bottom: AppDefaultPadding / 2,
        ),
        width: 260,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
