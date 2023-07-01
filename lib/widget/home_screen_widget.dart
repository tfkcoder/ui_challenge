import 'package:flutter/material.dart';

import '../constants/color.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.darkColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Center(
              child: SizedBox(
                width: 350,
                height: 240,
                child: Card(
                  color: Styles.cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 18.0, left: 18),
                              child: Text(
                                "OFFER",
                                style: TextStyle(
                                    color: Styles.paleYellow, letterSpacing: 4),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 18),
                              child: Text(
                                "40%OFF",
                                style: TextStyle(
                                    color: Styles.textColor,
                                    letterSpacing: 4,
                                    fontSize: 24),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 18),
                              child: Text(
                                "In honor of World Health Day We'd like to give you this amazing offers.",
                                style: TextStyle(
                                  color: Styles.textColor,
                                ),
                              ),
                            ),
                            Container(
                              height: 34,
                              margin: const EdgeInsets.only(top: 4.0, left: 18),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle button press
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Styles
                                      .btnColor, // Set the button text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set the border radius to fifteen
                                  ),
                                ),
                                child: Text(
                                  "View offers",
                                  style: TextStyle(
                                      color: Styles.darkColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        width: 190,
                        height: 240,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/img.png"),
                                fit: BoxFit.contain)),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 0, top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Recommended Fruits",
                  style: TextStyle(
                    color: Styles.unselectedColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Styles.paleYellow,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Styles.paleYellow,
                          size: 16,
                        )
                      ],
                    ))
              ],
            ),
          ),
          // add containers
          Padding(
            padding: const EdgeInsets.only(left:26,right:26,top: 8),
            child: Row(
              children: [
                Container(
                  height: 216,
                  width: 142,
                  decoration: BoxDecoration(
                      color: Styles.cardColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70.0),
                          topRight: Radius.circular(70),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                        height: 101,
                        decoration: BoxDecoration(
                            color: Styles.productBg,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/pineaple.png"),),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(70.0),
                                topRight: Radius.circular(70))),
                      ),
                      Container(
                        height: 115,
                        decoration: BoxDecoration(
                            color: Styles.blackColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 90,
                                right: 5,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Styles.btnColor,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(color: Styles.textColor),
                                  )
                                ],
                              ),
                            ),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                              "FRUIT",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.btnColor,
                                  letterSpacing: 4,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Pineapple",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Tsh. 8,000 ",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.btnColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                            ],
                           ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 90, right: 0),
                              child: Text(
                                "per kg",
                                style: TextStyle(
                                  color: Styles.unselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                                  ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 23,),
                  Container(
                  height: 216,
                  width: 142,
                  decoration: BoxDecoration(
                      color: Styles.cardColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(70.0),
                          topRight: Radius.circular(70),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                        height: 101,
                        decoration: BoxDecoration(
                            color: Styles.productBg,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/apple.png")),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(70.0),
                                topRight: Radius.circular(70))),
                      ),
                      Container(
                        height: 115,
                        decoration: BoxDecoration(
                            color: Styles.blackColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 90,
                                right: 5,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Styles.btnColor,
                                  ),
                                  Text(
                                    "4.7",
                                    style: TextStyle(color: Styles.textColor),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              "FRUIT",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.btnColor,
                                  letterSpacing: 4,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Apple",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Tsh. 25,00",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Styles.btnColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 90, right: 0),
                              child: Text(
                                "per kg",
                                style: TextStyle(
                                  color: Styles.unselectedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                                  ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
