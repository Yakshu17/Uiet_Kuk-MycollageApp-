import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:uiet_kuk/Widgets/Custom_button.dart';

class AdminAdmissionScreen extends StatefulWidget {
  const AdminAdmissionScreen({Key? key}) : super(key: key);

  @override
  State<AdminAdmissionScreen> createState() => _AdminAdmissionScreenState();
}

class _AdminAdmissionScreenState extends State<AdminAdmissionScreen> {
  final csevacantSeatController = TextEditingController();
  final mevacantSeatController = TextEditingController();
  final ecevacantSeatController = TextEditingController();
  final btvacantSeatController = TextEditingController();
  final csealmlvacantSeatController = TextEditingController();
  final eevacantSeatController = TextEditingController();
  final auth = FirebaseAuth.instance;
  bool loading = false;

  CollectionReference firestore =
      FirebaseFirestore.instance.collection("Vacant Seats");

  final List<String> course = [
    "BTECH",
    "MTECH",
  ];

  String? selectCourse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Update Vacant Seats of UIET Courses',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withOpacity(0.2),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(border: InputBorder.none),
                hint: const Text("Select Course"),
                borderRadius: BorderRadius.circular(10),
                style: const TextStyle(fontSize: 14, color: Colors.black),
                value: selectCourse,
                items: course.map((e) {
                  return DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectCourse = val;
                  });
                },
                isExpanded: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: csevacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' CSE Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: mevacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' ME Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: ecevacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' ECE Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: btvacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' BT Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: csealmlvacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' CSE AL&ML Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: eevacantSeatController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: ' EE Vacant Seats ',
                    border: InputBorder.none,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  if (selectCourse == null) {
                    print('3');
                    Utils().ErrorSnackBar(
                        context: context, content: "Course Select Properly");
                  } else {
                    loading = true;
                    setState(() {});
                    await firestore.doc(selectCourse).set({
                      "CSE Seats": csevacantSeatController.text==''?0 :csevacantSeatController.text,
                      "ME Seats":mevacantSeatController.text==''?0: mevacantSeatController.text,
                      "ECE Seats":ecevacantSeatController.text==''?0: ecevacantSeatController.text,
                      "BT Seats":btvacantSeatController.text==''?0: btvacantSeatController.text,
                      "CSE AIML Seats":csealmlvacantSeatController.text==''?0: csealmlvacantSeatController.text,
                      "EE Seats":eevacantSeatController.text==''?0: eevacantSeatController.text,
                    });
                    Utils()
                        .ShowSnackBar(context: context, content: 'Seats Updated');
                    csevacantSeatController.clear();
                    mevacantSeatController.clear();
                    ecevacantSeatController.clear();
                    btvacantSeatController.clear();
                    csealmlvacantSeatController.clear();
                    eevacantSeatController.clear();
                    loading = false;
                    setState(() {});
                  }
                  print('100');
                  loading = false;
                  setState(() {});
                },
                child: loading
                    ? CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Text(
                        "Update Seats",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,width: 60,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(9)),
                    child: Center(child: Text('Note ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),))),
                SizedBox(height: 10,),
                Card(
                  child: Container(
                    height: 70,
                      padding: EdgeInsets.all(8),
                      width: 300,
                      child: Center(child: Text('If you not fill any Form Field then that field automatically fill by 0 values after pressing update seats button.'))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
