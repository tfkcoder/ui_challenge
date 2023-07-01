import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';
import 'package:flutter/cupertino.dart';
import '../widget/favourite_screen_widget.dart';
import '../widget/home_screen_widget.dart';
import '../widget/search_screen_widget.dart';
import '../widget/transaction_screen_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.darkColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Styles.textColor,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            margin: const EdgeInsets.only(right: 24.0),
            child: CircleAvatar(
              backgroundColor: Styles.btnColor,
              backgroundImage: const AssetImage("assets/images/profile.png"),
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.notes,
                color: Styles.textColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Styles.darkColor,
        width: MediaQuery.of(context).size.width * 0.8,
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          HomeScreenWidget(),
          SearchScreenWidget(),
          FavouriteScreenWidget(),
          TransactionScreenWidget(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Styles.darkColor,
        child: _buildCustomBottomNavigationBar(),
      ),
    );
  }

  Widget _buildCustomBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Styles.darkColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 6,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          color: Styles.cardColor, // Set the desired background color
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.home, '', 0),
              _buildNavItem(CupertinoIcons.search, '', 1),
              _buildNavItem(CupertinoIcons.heart_fill, '', 2),
              _buildNavItem(Icons.assignment, '', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData iconData, String label, int index) {
    bool isSelected = _tabController.index == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _tabController.animateTo(index);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Stack(
                children: [
                  Icon(
                    iconData,
                    size: 36,
                    color: isSelected ? Styles.btnColor : Styles.textColor,
                  ),
                  // Positioned(
                  //   top: 0,
                  //   left: -18,
                  //   right: -18,
                  //   child: AnimatedContainer(
                  //     duration: const Duration(milliseconds: 200),
                  //     height: isSelected ? 4 : 0,
                  //     width: isSelected ? 72 : 0,
                  //     decoration: BoxDecoration(
                  //       color: isSelected ? Styles.btnColor : Colors.transparent,
                  //       borderRadius: BorderRadius.circular(2),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Styles.btnColor : Styles.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
