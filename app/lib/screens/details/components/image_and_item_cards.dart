import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'item_card.dart';

class ImageAndItemCards extends StatelessWidget {
  const ImageAndItemCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: AppDefaultPadding * 3),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      color: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: AppDefaultPadding),
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: AppPrimaryColor.withOpacity(0.4))
                ],
                image: DecorationImage(
                    image: AssetImage("assets/images/plant2.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
