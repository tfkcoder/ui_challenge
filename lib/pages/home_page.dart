import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';
import 'package:flutter/cupertino.dart';
import '../widget/favourite_screen_widget.dart';
import '../widget/home_screen_widget.dart';
import '../widget/search_screen_widget.dart';
import '../widget/transaction_screen_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {
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
                )),
            const SizedBox(
              width: 8,
            ),
            Container(
              margin: const EdgeInsets.only(right: 24.0),
              child: CircleAvatar(
                backgroundColor: Styles.btnColor,
                backgroundImage: const AssetImage(
                    "assets/images/profile.png"),
              ),
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Styles.textColor,
                ), // Set your custom drawer icon here
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
        
        children:const <Widget>[
          HomeScreenWidget(),
          SearchScreenWidget(),
          FavouriteScreenWidget(),
          TransactionScreenWidget(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
       
      );
  }

 Widget _buildBottomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
      color: Styles.cardColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          blurRadius: 6,
          offset: const Offset(0, -6),
        ),
       
      ],
       borderRadius:  BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CupertinoTabBar(
            currentIndex: _tabController.index,
            backgroundColor: Styles.darkColor,
            height: 70,
            activeColor: Styles.btnColor,
            inactiveColor: Styles.unselectedColor,
            onTap: _onTabTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Icon(Icons.home),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Icon(CupertinoIcons.search),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Icon(CupertinoIcons.heart_fill),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Icon(Icons.file_copy),
                ),
                label: '',
              ),
            ],
          ),
          AnimatedPositioned(
            top: 0,
            left: _tabController.index * (MediaQuery.of(context).size.width / 4),
            duration:const Duration(milliseconds: 200),
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 4,
              decoration: BoxDecoration(
                color: Styles.btnColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      )
  );
}

}
