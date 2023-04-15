import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminNavigationScreen.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminPlacementScreen.dart';
import 'package:uiet_kuk/Screens/EditProfile_Screen.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';
import 'package:uiet_kuk/Screens/Navigation_Screen.dart';
import 'package:uiet_kuk/Screens/Signup_Screen.dart';
import 'package:uiet_kuk/Screens/Splash_Screen.dart';

import 'Admins/AdminsScreens/AdminLoginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uiet-kuk',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: AdminPlacementScreen(),
    );
  }
}
