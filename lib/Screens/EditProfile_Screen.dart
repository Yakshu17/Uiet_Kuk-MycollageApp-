import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:firebase_storage/firebase_storage.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  CollectionReference firestore=FirebaseFirestore.instance.collection("S_Update_Profile");


  Uint8List? _Profile_Img;
  ImagePicker Profile_picker=ImagePicker();
  bool loading=false;
  String Profile_Url="";

  Future getGallaryImage()async{
    var picked_img=await Profile_picker.pickImage(source:ImageSource.gallery,imageQuality: 50 );


      if(picked_img!=null)
        {
          _Profile_Img=await  picked_img.readAsBytes();
          Utils().ShowSnackBar(context: context, content:"Profile Image Picked !");
        }
      else
        {
          Utils().ShowSnackBar(context: context, content:"Nothing Is Picked Up !");
        }
      setState(() {

      });

  }

  Future getCameraImage()async{
    var picked_img=await Profile_picker.pickImage(source:ImageSource.camera,imageQuality: 50 );


    if(picked_img!=null)
    {
      _Profile_Img=await picked_img.readAsBytes();
      Utils().ShowSnackBar(context: context, content:"Profile Image Picked !");
    }
    else
    {
      Utils().ShowSnackBar(context: context, content:"Nothing Is Picked Up !");
    }
    setState(() {

    });

  }
  Future Upload_ProfileImg() async{
    String id=DateTime.now().millisecondsSinceEpoch.toString();
    Reference ref= FirebaseStorage.instance.ref();

    Reference UploadProfile=ref.child('Student_Profile_Img').child(id);
        try
        {
          await UploadProfile.putData(_Profile_Img!);
         Profile_Url= await UploadProfile.getDownloadURL();
          Utils().ShowSnackBar(context: context, content: "Uploaded Successfully");
        }
        catch(e){
          Utils().ShowSnackBar(context: context, content: e.toString());

        }

  }

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
    print(namecontroller.text);
    print(skillbiocontroller.text);
    print(mobilecontroller.text);
    print(selected_course);
    print(selected_branch);
    print(graduationyearcontroller.text);
    print(selected_gender);
    print(addresscontroller.text);
    print(selectedboardingtype);
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
                        _Profile_Img==null?
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:AssetImage('assets/images/profile.png'),
                          ),
                        ):
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:MemoryImage(_Profile_Img!),
                          ),
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
                            onPressed: () {
                              showDialog(context: context, builder:(context) => AlertDialog(
                                content: Text("Choose Your Prefered Option?"),
                                actions: [
                                  TextButton(onPressed: (){
                                    getCameraImage();
                                    Navigator.pop(context);

                                  }, child:Icon(Icons.camera_alt),),
                                  TextButton(onPressed: ()async{
                                    await getGallaryImage();
                                    Navigator.pop(context);
                                    print("Image Picked");
                                    if(_Profile_Img==null)
                                      {
                                        return;
                                      }
                                    print("====================Image Uploaded -------------");


                                  }, child:Icon(FontAwesomeIcons.image)),

                                ],
                              ),);
                            },
                            icon:const Icon(
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
                    child: ElevatedButton(onPressed: ()async{
                          loading=true;

                          setState(() {

                          });
                          await Upload_ProfileImg();
                          String Sid=DateTime.now().millisecondsSinceEpoch.toString();
                         await  firestore.doc(Sid).set({
                            "Sid":Sid,
                            "Profile_Url":Profile_Url,
                            "Student Name":namecontroller.text,
                            "S-Bio":skillbiocontroller.text,
                            "Mobile_No":mobilecontroller.text,
                            "Course":selected_course,
                            "Branch":selected_branch,
                            "Graduation_Yaer":graduationyearcontroller.text,
                            "Gender":selected_gender,
                            "S_Address":addresscontroller.text,
                            "Boarding_Type":selectedboardingtype,

                          }).then((value){
                            Utils().ShowSnackBar(context: context, content:"Profile Updated Successfully");
                          }).onError((error, stackTrace){
                            Utils().ShowSnackBar(context: context, content:error.toString());
                          });
                      loading=false;
                      setState(() {

                      });
                    }, child:loading?CircularProgressIndicator(color: Colors.white,):Text("Update Profile"))),
                SizedBox(height: 50,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
