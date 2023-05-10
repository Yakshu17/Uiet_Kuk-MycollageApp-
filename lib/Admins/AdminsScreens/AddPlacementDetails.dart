import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uiet_kuk/Utils/Constants.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddPlacementDetails extends StatefulWidget {
  const AddPlacementDetails({Key? key}) : super(key: key);

  @override
  State<AddPlacementDetails> createState() => _AddPlacementDetailsState();
}

class _AddPlacementDetailsState extends State<AddPlacementDetails> {
  @override
  final auth = FirebaseAuth.instance;

  CollectionReference firestore =
      FirebaseFirestore.instance.collection("UIET PLACEMENT");

  final formkey = GlobalKey<FormState>();

  final namecontroller = TextEditingController();
  final companycontroller = TextEditingController();
  final packagecontroller = TextEditingController();
  final rollnocontroller = TextEditingController();
  String? selected_course;
  String? selected_branch;
  String? selected_session;

  Uint8List? _Profile_Img;
  ImagePicker Profile_picker = ImagePicker();
  bool loading = false;
  String Profile_Url = "";

  Future getGallaryImage() async {
    var picked_img = await Profile_picker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    if (picked_img != null) {
      _Profile_Img = await picked_img.readAsBytes();
      Utils().ShowSnackBar(context: context, content: "Profile Image Picked !");
    } else {
      Utils().ShowSnackBar(context: context, content: "Nothing Is Picked Up !");
    }
    setState(() {});
  }

  Future getCameraImage() async {
    var picked_img = await Profile_picker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    if (picked_img != null) {
      _Profile_Img = await picked_img.readAsBytes();
      Utils().ShowSnackBar(context: context, content: "Profile Image Picked !");
    } else {
      Utils().ShowSnackBar(context: context, content: "Nothing Is Picked Up !");
    }
    setState(() {});
  }

  Future PlacedStudentImg() async {
    Reference ref = FirebaseStorage.instance.ref();

    Reference UploadProfile =
        ref.child('PlacedStudentsImg').child(rollnocontroller.text);
    try {
      await UploadProfile.putData(_Profile_Img!);
      Profile_Url = await UploadProfile.getDownloadURL();
    } on FirebaseException catch (e) {
      Utils().ErrorSnackBar(context: context, content: e.toString());
    }
  }

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      _Profile_Img == null
                          ? CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                            )
                          : CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: MemoryImage(_Profile_Img!),
                              ),
                            ),
                      Positioned(
                        bottom: 12,
                        left: 90,
                        child: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          radius: 19,
                        ),
                      ),
                      Positioned(
                          bottom: 7,
                          left: 85,
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content:
                                        Text("Choose Your Prefered Option?"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          getCameraImage();
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.camera_alt),
                                      ),
                                      TextButton(
                                          onPressed: () async {
                                            await getGallaryImage();
                                            Navigator.pop(context);

                                            if (_Profile_Img == null) {
                                              return;
                                            }
                                          },
                                          child: Icon(FontAwesomeIcons.image)),
                                    ],
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 27,
                              ))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 50,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Name is Required";
                          }
                        },
                        controller: namecontroller,
                        style: TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          hintText: "Name",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 50,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Roll No is Required";
                          }
                        },
                        controller: rollnocontroller,
                        style: TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          hintText: "Roll No ",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.75,
                      height: 52,
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
                          hint: Text(
                            "Select Session",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'GoogleFont',
                                color: Colors.indigo),
                          ),
                          value: selected_session,
                          items: sessions.map((e) {
                            return DropdownMenuItem(
                              child: Text(
                                e,
                                style: TextStyle(fontSize: 13),
                              ),
                              value: e,
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              selected_session = val;
                            });
                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 50,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Company Name is Required";
                          }
                        },
                        style: TextStyle(fontSize: 13),
                        controller: companycontroller,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          hintText: "Company",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 50,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Package is Required";
                          }
                        },
                        style: TextStyle(fontSize: 13),
                        controller: packagecontroller,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.indigo)),
                          hintText: "Package in LPA",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.75,
                      height: 52,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: "Select Course",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
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
                        value: selected_course,
                        items: courses.map((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e,
                              style: TextStyle(fontSize: 13),
                            ),
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
                      height: 15,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.75,
                      height: 52,
                      child: DropdownButtonFormField<String>(
                        style: TextStyle(fontSize: 13),
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
                        hint: Text(
                          "Select Branch",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'GoogleFont',
                              color: Colors.indigo),
                        ),
                        value: selected_branch,
                        items: courseTobranch[selected_course]?.map((e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
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
                      height: 25,
                    ),
                    Container(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          if (selected_branch == null &&
                              selected_course == null &&
                              selected_session == null) {
                            Utils().ErrorSnackBar(
                                context: context,
                                content: "Required Field Not Selected?");
                          } else {
                            if (formkey.currentState!.validate()) {
                              loading = true;

                              setState(() {});

                              //Call Image Upload Method
                              await PlacedStudentImg();

                              await firestore
                                  .doc(selected_course)
                                  .collection(selected_branch!)
                                  .doc(rollnocontroller.text)
                                  .set({
                                "CompanyName": companycontroller.text,
                                "Package": packagecontroller.text,
                                "Session": selected_session,
                                "Student_Img": Profile_Url,
                                "Course": selected_course,
                                "Branch": selected_branch,
                                "Roll_No": rollnocontroller.text,
                                "Name": namecontroller.text
                              }).then((value) {
                                Utils().ShowSnackBar(
                                    context: context,
                                    content: "Detail Added Successfully");
                                namecontroller.clear();
                                rollnocontroller.clear();
                                companycontroller.clear();
                                packagecontroller.clear();
                              }).onError((error, stackTrace) {
                                Utils().ShowSnackBar(
                                    context: context,
                                    content: error.toString());
                              });
                              _Profile_Img = null;
                              loading = false;
                              setState(() {});
                            }
                          }
                        },
                        child: loading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text(
                                "Submit",
                                style: TextStyle(fontSize: 17),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
