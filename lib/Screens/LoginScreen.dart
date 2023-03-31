import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/Forgetpass_screen.dart';
import 'package:uiet_kuk/Screens/Home_Screen.dart';
import 'package:uiet_kuk/Screens/Signup_Screen.dart';
import 'Navigation_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: 30,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 250,
                      child: Image.asset(
                        "assets/images/LoginImage.png",
                        fit: BoxFit.fitWidth,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GoogleFont'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: const InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        label: Text(
                          "Enter Your Email ",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      controller: passwordcontroller,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo)),
                        label: const Text("Password",
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
                    height: 14,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 160),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Forgetpass_Screen() ,));
                      },
                      child: const Text(
                        "ForgotPassword?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.indigo,
                            fontFamily: 'googlefont'),

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        auth
                            .signInWithEmailAndPassword(
                                email: emailcontroller.text.toString(),
                                password: passwordcontroller.text)
                            .then((value) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationScreen()));
                          final snackbar = SnackBar(
                            content: const Text("Login Successfully"),
                            action: SnackBarAction(
                                label: "Dismiss",
                                onPressed: () {},
                                textColor: Colors.white),
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }).then((value) {
                          print("Login Successfully");
                        }).onError((error, stackTrace) {
                          final snackbar = SnackBar(
                            content: Text("Some error occurred"),
                            action: SnackBarAction(
                                label: "Dismiss",
                                onPressed: () {},
                                textColor: Colors.white),
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          print(error.toString());
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'googleFont',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "New to logistics?",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontFamily: 'googleFont')),
                        ]),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ));
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.indigo,
                                fontFamily: 'googleFont'),
                          ))
                    ],
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
