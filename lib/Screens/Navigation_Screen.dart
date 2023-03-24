import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/Notification_Screen.dart';
import 'package:uiet_kuk/Screens/Profile_Screen.dart';
import 'package:uiet_kuk/Screens/Search_Screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController controller=PageController();
  int _currentIndex=0;

  void changePage(int val) {
    controller.jumpToPage(val);
    _currentIndex = val;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top:BorderSide(color: Colors.grey[500]!,width: 1)),
          ),
          child: TabBar(
            indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color:Colors.indigo,width: 4),
                )
            ),
           onTap: changePage,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: Icon(Icons.home_outlined,color:_currentIndex==0?Colors.indigo:Colors.grey,)),
              Tab(child: Icon(Icons.search,color:_currentIndex==1?Colors.indigo:Colors.grey,)),
              Tab(child: Icon(Icons.notifications,color: _currentIndex==2?Colors.indigo:Colors.grey)),
              Tab(child: Icon(Icons.account_circle_outlined,color: _currentIndex==3?Colors.indigo:Colors.grey)),


            ],
          ),
        ),
        drawer: Drawer(),
        body: SafeArea(
          child: PageView(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            allowImplicitScrolling: false,
            children: [
              HomeScreen(),
              SearchScreen(),
              NotificationScreen(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
