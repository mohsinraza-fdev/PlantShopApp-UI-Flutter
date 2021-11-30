import 'package:app/components/bottom_nav_bar.dart';
import 'package:app/constants.dart';
import 'package:app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.clear_all),
        onPressed: () {},  
      ),
    );
  }
}

