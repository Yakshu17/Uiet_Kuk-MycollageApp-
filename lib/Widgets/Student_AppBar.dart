import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminLoginScreen.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminNavigationScreen.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';
import 'package:uiet_kuk/Screens/Navigation_Screen.dart';
import 'package:url_launcher/url_launcher.dart';


class StudentAppBar extends StatefulWidget implements PreferredSizeWidget {
  const StudentAppBar({Key? key}) :preferredSize = const Size.fromHeight(60), super(key: key);

  final Size preferredSize;
  @override
  State<StudentAppBar> createState() => StudentAppBarState();
}

class StudentAppBarState extends State<StudentAppBar> {

  openaddmissionlink()async{
    const url="https://www.uietkuk.ac.in/admission-uiet/";

    if(await canLaunchUrl(Uri.parse(url)))
      {
        await launchUrl(Uri.parse(url));
      }
    else
      {
        throw "Could not launch the url";
      }
  }
  static const String KEYLOGIN ="login";
  void navigateUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var status = prefs.getBool(KEYLOGIN);
    print(status);
      if(status !=null) {
        if (status == true) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const AdminNavigationScreen()));
          print(status);
        } else {
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (BuildContext context) => LoginScreen()));
          print(status);

        }
      } else{
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen()));
        print(status);
      }


    @override
    Widget build(BuildContext context) {
      throw UnimplementedError();
    }}
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [

        Padding(
          padding: const EdgeInsets.only(top:10.0,right: 10,bottom: 7),
          child: InkWell(
            onTap: openaddmissionlink,
            child: Container(
              height: 30,
              width: 120,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange),
              child: const Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 5,),
        IconButton(onPressed: ()  {
          navigateUser();
        }, icon:const Icon(Icons.admin_panel_settings_outlined)),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4),
        child: Container(),
      ),
    );
  }
}

