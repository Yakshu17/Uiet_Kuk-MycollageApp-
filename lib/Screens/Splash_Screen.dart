import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';
import 'package:uiet_kuk/Screens/Navigation_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth=FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    final user=auth.currentUser;
    if(user!=null){
      Timer(const Duration(seconds: 4),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
      });
    }
    else {
      Timer(const Duration(seconds: 4),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
      });
      }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/uiet_logo.png",fit: BoxFit.cover)),
    );
  }
}
