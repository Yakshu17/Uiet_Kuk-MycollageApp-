import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
        ),
      ),
    );
  }
}
