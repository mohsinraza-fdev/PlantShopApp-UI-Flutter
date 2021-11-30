import 'package:app/components/bottom_buy_bar.dart';
import 'package:app/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:app/components/bottom_buy_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BuyBar(),
      
    );
  }
}