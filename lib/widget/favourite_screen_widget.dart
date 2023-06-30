import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';

class FavouriteScreenWidget extends StatelessWidget {
  const FavouriteScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Styles.darkColor,
        child: Center(
          child: Text("Favourite Screen",style: TextStyle(color: Styles.textColor),),
        ),
      ),
    );
  }
}