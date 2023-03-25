import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final namecontroller=TextEditingController();
  final departmentcontroller=TextEditingController();
  final mobilecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child:Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile.png'),
                          radius: 40,
                        ),
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                        bottom: 55,
                        left: 69,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 15,
                        ),
                      ),
                      Positioned(
                        bottom: 46,
                          left: 60,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,))),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: TextFormField(
                  controller: namecontroller,
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
                  controller: departmentcontroller,
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

            ],
          ),
        ),
      ),
    );
  }
}
