import 'package:app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PlantRecomList extends StatelessWidget {
  const PlantRecomList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            image: "assets/images/plant1.jpg.png",
            title: "Plant 1",
            country: "Pakistan",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/plant2.jpg",
            title: "Plant 1",
            country: "Pakistan",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/plant1.jpg.png",
            title: "Plant 1",
            country: "Pakistan",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          PlantCard(
            image: "assets/images/plant1.jpg.png",
            title: "Plant 1",
            country: "Pakistan",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppDefaultPadding,
          top: AppDefaultPadding / 2,
          bottom: AppDefaultPadding * 1.5),
      width: 130,
      child: Column(
        children: <Widget>[
          Container(
            width: 130,
            height: 160,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(AppDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: AppPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: AppPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: AppPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
