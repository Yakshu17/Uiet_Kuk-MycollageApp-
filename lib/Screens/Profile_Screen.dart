import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiet_kuk/Screens/LoginScreen.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:uiet_kuk/Widgets/Profile_Item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 32,
                        child: InkWell(
                          onTap: () {
                            Utils().ShowSnackBar(
                                context: context,
                                content: "Please Upload Profile Picture");
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lalit Kumar",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'BTECH CSE B',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          icon: Icon(Icons.logout)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Profile_Item(
                icon: FontAwesomeIcons.linkedin,
                title: 'Connect Linkedin',
                callback: () {},
              ),
              Profile_Item(
                icon: Icons.person,
                title: 'Edit Profile',
                callback: () {},
              ),
              Profile_Item(
                  title: "Download Content",
                  icon: FontAwesomeIcons.download,
                  callback: () {}),
              Profile_Item(
                  title: "App Feedback",
                  icon: FontAwesomeIcons.star,
                  callback: () {}),
              Profile_Item(
                  title: "Share With Friends",
                  icon: FontAwesomeIcons.share,
                  callback: () {}),
              Profile_Item(
                  title: "Change Password",
                  icon: Icons.security,
                  callback: () {}),
              Profile_Item(
                  title: "Delete Account", icon: Icons.delete, callback: () {}),
              Profile_Item(
                  title: "Help Centre",
                  icon: FontAwesomeIcons.hireAHelper,
                  callback: () {}),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text(
                    "UIET KUK",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Version : 1.0",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
