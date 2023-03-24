import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final mobile =TextEditingController();
  final rollno= TextEditingController();
  final name =TextEditingController();

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
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height *0.4,
                    child: Image.asset(
                      "assets/images/Signupimg.png",
                      fit: BoxFit.cover,
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const Text(
                    "Signup",
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
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: Text(
                        "Enter Name",
                        style:
                        TextStyle(fontSize: 17, fontFamily: 'GoogleFont', color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: Text(
                        "Enter Kuk Email",
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
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo
                          )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: const Text( "Enter Password",style: TextStyle(color: Colors.indigo)),
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
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: rollno,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo)
                      ),
                      label: Text(
                        "Enter RollNo.",
                        style:
                        TextStyle(fontSize: 17, fontFamily: 'GoogleFont', color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 18,
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
                      "Continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'googleFont',

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Joined Us Before?",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontFamily: 'googleFont')),
                      ]),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    }, child: Text("Login",style:TextStyle(
                        fontSize: 17,
                        color: Colors.indigo,
                        fontFamily: 'googleFont') ,)
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}