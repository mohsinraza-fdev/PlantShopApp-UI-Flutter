import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 18,
            color: AppPrimaryColor.withOpacity(0.40)
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white
          )
        ]
      ),
      child: Icon(Icons.brightness_high_outlined, color: AppPrimaryColor, size: 35,),
    );
  }
}
