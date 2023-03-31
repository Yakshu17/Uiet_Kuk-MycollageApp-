import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/Signup_Screen.dart';


class Forgetpass_Screen extends StatefulWidget {
  @override
  State<Forgetpass_Screen> createState() => _Forgetpass_ScreenState();
}
class _Forgetpass_ScreenState extends State<Forgetpass_Screen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height*0.42,
                      child: Image.asset(
                        "assets/images/forgotimg.png",
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Forgot",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GoogleFont'),
                        ),
                        Text(
                          "Password?",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GoogleFont'),
                        ),
                        SizedBox(height: 11,),
                        Text(
                          "Don't worry it happens. Please enter the address associated with your account.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'GoogleFont'),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 27,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        label: Text(
                          "Email ID /Mobile number",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'googleFont',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
