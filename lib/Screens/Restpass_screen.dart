import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Resetpass_Screen extends StatefulWidget {
  @override
  State<Resetpass_Screen> createState() => _Resetpass_ScreenState();
}
class _Resetpass_ScreenState extends State<Resetpass_Screen> {
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
                      height: MediaQuery.of(context).size.height*0.33,
                      child: Image.asset(
                        "assets/images/resetimg.png",
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
                          "Reset",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GoogleFont'),
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GoogleFont'),
                        ),
                        SizedBox(height: 11,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 27,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child:TextFormField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        label: const Text("New Password",
                            style: TextStyle(color: Colors.indigo)),
                        suffixIcon: IconButton(
                          color: Colors.indigo,
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        label: const Text("Confirm new Password",
                            style: TextStyle(color: Colors.indigo)),
                        suffixIcon: IconButton(
                          color: Colors.indigo,
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
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
