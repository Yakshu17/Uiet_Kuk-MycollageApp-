import 'package:flutter/material.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminAdmissionScreen.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminNotifyScreen.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminPlacementScreen.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/Placement_Screen.dart';
import 'package:uiet_kuk/Screens/Profile_Screen.dart';

 const List<Widget> pages = [
  HomeScreen(),
  PlacementScreen(),
  ProfileScreen(),
  ProfileScreen(),
];

 const List<Widget> AdminPages = [
  HomeScreen(),
  AdminPlacementScreen(),
  AdminAdmissionScreen(),
  AdminNotifyscreen(),

 ];

const List<String> home_slider = [
 "assets/images/HOME2.jpg",
 "assets/images/HOME1.png",
 "assets/images/uiet.jpg",


];

const List<String> placement_slider = [
 "assets/images/placement_slider1.png",
 "assets/images/placement_slider4.jpeg",
 "assets/images/placement_slider2.jpg",


];