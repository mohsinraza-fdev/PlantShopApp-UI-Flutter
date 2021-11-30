import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDefaultPadding * 2,
        right: AppDefaultPadding * 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            color: AppPrimaryColor.withOpacity(0.40),
            blurRadius: 30
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
            color: AppPrimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.favorite_outline),
            onPressed: () {},
            color: AppPrimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.collections_outlined),
            onPressed: () {},
            color: AppPrimaryColor,
          ),
        ],
      ),
    );
  }
}