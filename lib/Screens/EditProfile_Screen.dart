import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/utils.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final namecontroller = TextEditingController();
  final departmentcontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final addresscontroller=TextEditingController();
  final skillbiocontroller=TextEditingController();
  final graduationyearcontroller=TextEditingController();
  String? selected_course;
  String? selected_branch;
  String? selected_gender;
  String? selectedboardingtype;

  List<String> courses = ["BTECH", "MTECH"];
  List<String> gender = ["Male", "Female", "Others"];
  List <String> boardingtype=["Hosteller","Day-Scholar"];
  Map<String, List<String>> courseTobranch = {
    "BTECH": ["CSE B", "CSE A", "ECE B", "ECE A", "ME B", "ME A", "BT"],
    "MTECH": ["CSE", "ECE", "EE"]
  };

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 40,
                          ),
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                        Positioned(
                          bottom: 55,
                          left: 69,
                          child: CircleAvatar(
                            backgroundColor: Colors.indigo.shade500,
                            radius: 15,
                          ),
                        ),
                        Positioned(
                          bottom: 46,
                          left: 60,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: namecontroller,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      label: Text(
                        "Enter Name",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GoogleFont',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: skillbiocontroller,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      label: Text(
                        "Enter Bio Like Linkedin",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GoogleFont',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller: mobilecontroller,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      label: Text(
                        "Enter Mobile No.",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GoogleFont',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: screenSize.width * 0.85,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 0,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 0,
                        color: Colors.indigo,
                      )),
                    ),
                    hint: Text("Select Your Course",style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GoogleFont',
                        color: Colors.indigo),),
                    value: selected_course,
                    items: courses.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      selected_branch = null;
                      setState(() {
                        selected_course = val;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: screenSize.width * 0.85,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 0,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 0,
                        color: Colors.indigo,
                      )),
                    ),
                    hint: Text("Select Your Branch",style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GoogleFont',
                        color: Colors.indigo),),
                    value: selected_branch,
                    items: courseTobranch[selected_course]?.map((e) {
                      return DropdownMenuItem<String>(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selected_branch = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    controller:graduationyearcontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      label: Text(
                        "Enter Graduation Year",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GoogleFont',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: screenSize.width*0.85,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 0,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.indigo,
                            )),
                      ),
                    hint: Text("Select Your Gender",style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'GoogleFont',
                        color: Colors.indigo),),
                    value: selected_gender,
                      items: gender.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          selected_gender = val;
                        });
                      }),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    maxLines: 4,
                    controller: addresscontroller,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo,width: 0)),
                      label: Text(
                        "Type Permanent Address",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GoogleFont',
                            color: Colors.indigo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: screenSize.width*0.85,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 0,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.indigo,
                            )),
                      ),
                      hint: Text("Select Boarding Type",style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'GoogleFont',
                          color: Colors.indigo),),
                      value: selectedboardingtype,
                      items: boardingtype.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedboardingtype = val;
                        });
                      }),
                ),
                SizedBox(height: 40,),

                SizedBox(
                  width: screenSize.width*0.85,
                    height: screenSize.height*0.07,
                    child: ElevatedButton(onPressed: (){}, child:Text("Update Profile"))),
                SizedBox(height: 30,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
