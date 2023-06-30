import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';

class SearchScreenWidget extends StatelessWidget {
  const SearchScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Styles.darkColor,
        child: Center(
          child: Text("Search Screen ",style: TextStyle(color: Styles.textColor),),
        ),
      ),
    );
  }
}