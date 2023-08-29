import 'package:flutter/material.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AdminLoginScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentAppBar extends StatefulWidget implements PreferredSizeWidget {
  const StudentAppBar({Key? key}) :preferredSize = const Size.fromHeight(60), super(key: key);

  final Size preferredSize;
  @override
  State<StudentAppBar> createState() => _StudentAppBarState();
}

class _StudentAppBarState extends State<StudentAppBar> {

  openaddmissionlink()async{
    const url="https://www.uietkuk.ac.in/admission-uiet/";

    if(await canLaunchUrl(Uri.parse(url)))
      {
        await launchUrl(Uri.parse(url));
      }
    else
      {
        throw "Could not launch the url";
      }
  }


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [

        Padding(
          padding: const EdgeInsets.only(top:10.0,right: 10,bottom: 7),
          child: InkWell(
            onTap: openaddmissionlink,
            child: Container(
              height: 30,
              width: 120,
              child: Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                ),
              ),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange),
            ),
          ),
        ),
        SizedBox(width: 5,),
        IconButton(onPressed: (){
          showDialog(context: context, builder:(context) => AlertDialog(
            content: Text("Are you sure you want logout ?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child:Text("Cancel")),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>const AdminLogin(),));
              }, child:Text("Confirm")),

            ],
          ),);
        }, icon:Icon(Icons.logout)),

      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4),
        child: Container(),
      ),
    );
  }
}
