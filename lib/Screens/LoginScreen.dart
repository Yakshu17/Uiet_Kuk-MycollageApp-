import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final name = TextEditingController();
  final password = TextEditingController();

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 250,
                    child: Image.asset(
                      "assets/images/LoginImage.png",
                      fit: BoxFit.fitWidth,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
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
                    controller: name,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: Text(
                        "Enter Your Name ",
                        style:
                            TextStyle(fontSize: 17, fontFamily: 'GoogleFont', color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: password,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: Text( "Password",style: TextStyle(color: Colors.indigo)),
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
                SizedBox(
                  height: 14,
                ),
                Container(
                  child: Text(
                    "ForgotPassword?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo,
                        fontFamily: 'googlefont'),
                  ),
                  padding: EdgeInsets.only(left: 160),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'googleFont',

                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "New to logistics?",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontFamily: 'googleFont')),
                      TextSpan(
                          text: " Register",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.indigo,
                              fontFamily: 'googlefont')),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
