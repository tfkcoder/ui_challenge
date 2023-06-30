import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';

class TransactionScreenWidget extends StatelessWidget {
  const TransactionScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Styles.darkColor,child: Center(child: Text("Transaction",style: TextStyle(color: Styles.textColor),),),),
    );
  }
}