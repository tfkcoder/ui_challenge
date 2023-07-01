import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/color.dart';
import 'package:flutter/cupertino.dart';
import '../widget/favourite_screen_widget.dart';
import '../widget/home_screen_widget.dart';
import '../widget/search_screen_widget.dart';
import '../widget/transaction_screen_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key ?key}) : super(key: key);

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
                Icons.menu,
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
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: NavigationBar(
        backgroundColor: Styles.darkColor,
        indicatorColor: Styles.btnColor, // Set the indicator color here
        selectedIndex: _tabController.index,
        onDestinationSelected: (int index) {
          setState(() {
            _tabController.animateTo(index);
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.heart_fill),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Icon(Icons.file_copy),
            label: 'Transactions',
          ),
        ],
      ),
    );
  }
}
