import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/Notification_Screen.dart';
import 'package:uiet_kuk/Screens/Profile_Screen.dart';
import 'package:uiet_kuk/Screens/Search_Screen.dart';
import 'package:uiet_kuk/Widgets/Profile_Item.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  PageController controller = PageController();
  int _currentIndex = 0;

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
        appBar: AppBar(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey[500]!, width: 1)),
          ),
          child: TabBar(
            indicator: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.indigo, width: 4),
            )),
            onTap: changePage,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                  child: Icon(
                Icons.home_outlined,
                color: _currentIndex == 0 ? Colors.indigo : Colors.grey,
              )),
              Tab(
                  child: Icon(
                Icons.search,
                color: _currentIndex == 1 ? Colors.indigo : Colors.grey,
              )),
              Tab(
                  child: Icon(Icons.notifications,
                      color: _currentIndex == 2 ? Colors.indigo : Colors.grey)),
              Tab(
                  child: Icon(Icons.account_circle_outlined,
                      color: _currentIndex == 3 ? Colors.indigo : Colors.grey)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName:
                    Text("UIET", style: TextStyle(fontWeight: FontWeight.w800)),
                accountEmail: Text(
                  "KURUKSHETRA UNIVERSITY",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                currentAccountPictureSize: Size.square(80),
                currentAccountPicture:
                    CircleAvatar(

                    backgroundImage:
                        AssetImage('assets/images/KU_logo_without_name.png', ),
                  ),
              ),
              Profile_Item(icon: Icons.home, title: "Home", callback: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
              }),
              Profile_Item(
                  icon: Icons.admin_panel_settings_sharp,
                  title: "Administration",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.building,
                  title: "Departments",
                  callback: () {}),
              Profile_Item(
                  icon: Icons.person, title: "Faculties", callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.graduationCap,
                  title: "Admission",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.buildingColumns,
                  title: "Academic",
                  callback: () {}),
              Profile_Item(
                  icon: Icons.build_rounded,
                  title: "IIC/STARTUP",
                  callback: () {}),
              Profile_Item(
                  icon: Icons.engineering, title: "T&P Cell", callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.userGraduate,
                  title: "Alumni",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.paste,
                  title: "Exams",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.squarePollVertical,
                  title: "Results",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.download,
                  title: "Downloads",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.peopleGroup,
                  title: "Clubs",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.palette,
                  title: "Events",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.cameraRetro,
                  title: "Gallery",
                  callback: () {}),
              Profile_Item(
                  icon: FontAwesomeIcons.comment,
                  title: "Complaints",
                  callback: () {}),
            ],
          ),
        ),
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
