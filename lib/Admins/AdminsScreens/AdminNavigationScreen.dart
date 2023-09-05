import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminLoginScreen.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Utils/Constants.dart';
import 'package:uiet_kuk/Widgets/Profile_Item.dart';

class AdminNavigationScreen extends StatefulWidget {
  const AdminNavigationScreen({Key? key}) : super(key: key);

  @override
  State<AdminNavigationScreen> createState() => _AdminNavigationScreenState();
}

class _AdminNavigationScreenState extends State<AdminNavigationScreen> {

  PageController pagecontroller = PageController();
  int _currentIndex = 0;
  int selectedTab = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pagecontroller.dispose();
  }
  void logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs?.clear();
    // ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => const AdminLogin()),
      ModalRoute.withName("/login"),
    );
  }

  changepage(int page) {
    pagecontroller.jumpToPage(page);
    setState(() {
      selectedTab = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(actions: [
            IconButton(onPressed: (){
              showDialog(context: context, builder:(context) => AlertDialog(
                content: const Text("Are you sure you want logout ?"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child:const Text("Cancel")),
                  TextButton(onPressed: (){
                    logoutUser();
                  }, child:const Text("Confirm")),

                ],
              ),);
            }, icon:const Icon(Icons.logout)),
          ],),

          body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              allowImplicitScrolling: false,
              controller: pagecontroller,
              children: AdminPages),

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

                Profile_Item(icon: Icons.home,
                    title: "Home",
                    callback: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminNavigationScreen(),));
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
                    icon: Icons.person,
                    title: "Faculties",
                    callback: () {}),
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
          ) ,

          bottomNavigationBar: Container(
            height: 55,
            margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10,top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    spreadRadius: 0.7,
                    offset: Offset.zero)
              ],
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              //physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 1, bottom: 2),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              onTap: changepage,
              //controller: pageController,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home_outlined,
                    color: selectedTab == 0 ? Colors.indigo : Colors.black,
                  ),
                  iconMargin: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: selectedTab == 0 ? Colors.indigo : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.trending_up_sharp,
                    color: selectedTab == 1 ? Colors.indigo : Colors.black,
                  ),
                  iconMargin: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Placement",
                    style: TextStyle(
                        color: selectedTab == 1 ? Colors.indigo : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.graduationCap,
                    color: selectedTab == 2 ? Colors.indigo : Colors.black,
                  ),
                  iconMargin: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Admission",
                    style: TextStyle(
                        color: selectedTab == 2 ? Colors.indigo : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.event_note,
                    color: selectedTab == 3 ? Colors.indigo : Colors.black,
                  ),
                  iconMargin: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Notify",
                    style: TextStyle(
                        color: selectedTab == 3 ? Colors.indigo : Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
