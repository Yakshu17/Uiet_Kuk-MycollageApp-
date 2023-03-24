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
<<<<<<< HEAD
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
                      border: UnderlineInputBorder(),
                      hintText: "Name",
                      label: Text(
                        "Enter Your Name ",
                        style:
                            TextStyle(fontSize: 17, fontFamily: 'GoogleFont'),
                      ),
                      alignLabelWithHint: false,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: password,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Password",
                      labelText: "Password",
                      helperText: "Password must contain special character",
                      helperStyle: TextStyle(color: Colors.green),
                      suffixIcon: IconButton(
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
                        color: Colors.blueAccent,
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
                          fontFamily: 'googleFont'),
                    ),
                    style: ElevatedButton.styleFrom(
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
                              color: Colors.blueAccent,
                              fontFamily: 'googlefont')),
                    ]),
                  ),
                ),
              ],
            ),
          ),
=======
        child: Column(
          children:[
            const SizedBox(height: 60,),
            const Image(image: AssetImage('assets/images/LoginImage.png',),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [SizedBox(width: 20,height: 30,),
                Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700)),
              ]
              
            )


          ],
>>>>>>> 36fd4cc6e3e9e82367b9d1caae55086e0741d513
        ),
      ),
    );
  }
}
