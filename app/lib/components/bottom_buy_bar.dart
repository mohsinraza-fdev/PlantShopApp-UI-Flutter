import 'package:flutter/material.dart';

import '../constants.dart';

class BuyBar extends StatelessWidget {
  const BuyBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 80,
      color: AppPrimaryColor.withOpacity(0.1),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: size.width / 2 + 2,
            height: 80,
            child: TextButton(
              onPressed: () {},
              child: Text("Buy Now", style: TextStyle( fontSize: 16),),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
                backgroundColor: AppPrimaryColor,

              ),
            ),
          ),
          Expanded(child: Container(child: TextButton(onPressed: () {}, child: Text("Description"), ), height: 80))
        ],
      ),
    );
  }
}
