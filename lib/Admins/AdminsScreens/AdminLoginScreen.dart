import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';
import 'package:uiet_kuk/Screens/Navigation_Screen.dart';
import 'package:uiet_kuk/Widgets/custom_animated_white_btn.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  //height: 250,
                  child: Image.asset(
                    "assets/images/kuk.png",
                    fit: BoxFit.fitWidth,
                  )),
              const SizedBox(
                height: 30,
              ),
              Text(
                "UIET",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Googlefont"),
              ),
              SizedBox(
                height: 12,
              ),
              Text("KURUKSHETRA UNIVERSITY",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  )),

              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black54),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)),
                      backgroundColor: Colors.white),
                  child: Text(
                    "Login As Admin",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                        color: Colors.black54,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19))),
                  child: Text(
                    "Continue Without Login",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  NavigationScreen(),));
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
