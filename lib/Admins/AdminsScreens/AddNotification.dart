import 'dart:typed_data';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../Utils/utils.dart';

class Add_Notification extends StatefulWidget {
  @override
  _Add_NotificationState createState() => _Add_NotificationState();
}
class _Add_NotificationState extends State<Add_Notification> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _standardController = TextEditingController();
  final TextEditingController _studentnameController = TextEditingController();
  final TextEditingController _NotificationtypeController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  bool loading = false;

  Uint8List? _Profile_Img;
  ImagePicker Profile_picker = ImagePicker();
  String Profile_Url = "";

  Future getGallaryImage() async {
    var pickedImg = await Profile_picker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    if (pickedImg != null) {
      _Profile_Img = await pickedImg.readAsBytes();
      Utils().ShowSnackBar(context: context, content: "Notice Image Picked !");
    } else {
      Utils().ShowSnackBar(context: context, content: "Nothing Is Picked Up !");
    }
    setState(() {});
  }
  Future getCameraImage() async {
    var pickedImg = await Profile_picker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    if (pickedImg != null) {
      _Profile_Img = await pickedImg.readAsBytes();
      Utils().ShowSnackBar(context: context, content: "Image is Picked !");
    } else {
      Utils().ShowSnackBar(context: context, content: "Nothing Is Picked Up !");
    }
    setState(() {});
  }
  Future Notification_img() async {
    Reference ref = FirebaseStorage.instance.ref();
    Reference UploadProfile =
    ref.child('Notification_Data').child(_NotificationtypeController.text);
    try {
      await UploadProfile.putData(_Profile_Img!);
      Profile_Url = await UploadProfile.getDownloadURL();
    } on FirebaseException catch (e) {
      Utils().ErrorSnackBar(context: context, content: e.toString());
    }
  }
  void sendDataToFirebase() async {
    if (_Profile_Img == null) {
      Utils().ErrorSnackBar(
          context: context,
          content: "Image file is not Selected?");
    } else {
      if (formkey.currentState!.validate()) {
        loading = true;
        setState(() {});
        String title = _titleController.text;
        String description = _descriptionController.text;
        String standard = _standardController.text;
        String studentname = _studentnameController.text;
        String notificationType = _NotificationtypeController.text;
        await Notification_img();
        await FirebaseFirestore.instance.collection('Notification_Data').doc(
            _NotificationtypeController.text).set({
          'Notification_Img': Profile_Url,
          'Title': title,
          'Description': description,
          'Standard': standard,
          'Student Name': studentname,
          'Notification-Type': notificationType,
          'date': '${'Date and Time - '}${DateTime
              .now()
              .day}-${DateTime
              .now()
              .month}-${DateTime
              .now()
              .year}${'   '}${DateTime
              .now()
              .hour}${':'}${DateTime
              .now()
              .minute}${':'}${DateTime
              .now()
              .second}',
        }).then((value) async {
          Navigator.pop(context);
          Utils().ShowSnackBar(
              context: context, content: "Notification Added Successfully");
          _dateController.clear();
          _studentnameController.clear();
          _descriptionController.clear();
          _standardController.clear();
          _titleController.clear();
          _NotificationtypeController.clear();
          loading = false;
          setState(() {});
        }).onError((error, stackTrace) {
          Utils().ErrorSnackBar(context: context, content: error.toString());
          loading = false;
          setState(() {});
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.indigo,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formkey,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            _Profile_Img == null
                                ? const CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(backgroundColor: Colors.white,
                                radius: 60,
                                backgroundImage:
                                AssetImage('assets/images/notice.png'),
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
                            const Positioned(
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
                                          const Text("Choose Your Prefered Image?",style:
                                          TextStyle(fontWeight: FontWeight.bold),),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                getCameraImage();
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(Icons.camera_alt,color: Colors.indigo,),
                                            ),
                                            TextButton(
                                                onPressed: () async {
                                                  await getGallaryImage();
                                                  Navigator.pop(context);

                                                  if (_Profile_Img == null) {
                                                    return;
                                                  }
                                                },
                                                child: const Icon(Icons.image,color: Colors.indigo,)),
                                          ],
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                      size: 27,
                                    ))),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Title is Required";
                        }
                      },
                      controller: _titleController,
                      decoration: const InputDecoration(
                        labelText: 'Title',
                        prefixIcon: Icon(Icons.title,color: Colors.indigo,),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.description,color: Colors.indigo,),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        labelText: 'Description',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _standardController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.stacked_bar_chart,color: Colors.indigo,),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        labelText: 'Standard',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _studentnameController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.perm_identity_rounded,color: Colors.indigo,),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        labelText: 'Student Name',
                      ),
                    ),const SizedBox(height: 16.0),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Notification-Type is Required";
                        }
                      },
                      controller: _NotificationtypeController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.notification_add,color: Colors.indigo,),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.indigo)),
                        labelText: 'Notification-Type',
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed:(){
                        sendDataToFirebase();

                      }
                      , style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                    ),
                      child:loading
                          ? LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.white, size: 40)
                          : const Text('Submit',),
                    ),

                    const SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

