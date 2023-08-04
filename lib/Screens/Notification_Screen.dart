import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:uiet_kuk/Widgets/FooterWidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance
      .collection('Notification_Data')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
           
           StreamBuilder<QuerySnapshot>(
                    stream: firestore,
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(
                          color: Colors.orange,
                        );
                      }
                      if (snapshot!.hasError) {
                        return Text("An Error Occured !");
                      }
                      return Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: screensize.height * 0.4,
                              width: screensize.width * 0.96,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(8),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                      height: screensize.height * 0.05,
                                      width: screensize.width * 0.9,
                                      child: Center(
                                          child: Text(
                                        snapshot.data!.docs[index]["Title"]
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                            overflow: TextOverflow.ellipsis,

                                          ))),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: screensize.height * 0.13,
                                          width: screensize.width * 0.24,
                                          child: CircleAvatar(
                                              backgroundColor: Colors.orange,
                                              radius: 42,
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    snapshot
                                                        .data!
                                                        .docs[index]
                                                            ["Notification_Img"]
                                                        .toString()),
                                                radius: 40,
                                              ))),
                                      SizedBox(
                                        width: screensize.width * 0.1,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              height: screensize.height * 0.05,
                                              width: screensize.width * 0.55,
                                              child: Text(
                                                "${snapshot.data!.docs[index]["Student Name"].toString()}",
                                                style: TextStyle(fontSize: 16),
                                                overflow: TextOverflow.ellipsis,
                                              )),
                                          Container(
                                              height: screensize.height * 0.05,
                                              width: screensize.width * 0.55,
                                              child: Text(
                                                "${snapshot.data!.docs[index]["Standard"].toString()}",
                                                style: TextStyle(fontSize: 16),
                                                overflow: TextOverflow.ellipsis,
                                              )),
                                          Container(
                                              height: screensize.height * 0.05,
                                              width: screensize.width * 0.55,
                                              child: Text(
                                                "${snapshot.data!.docs[index]["date"].toString()}",
                                                style: TextStyle(fontSize: 16),
                                                overflow: TextOverflow.ellipsis,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: screensize.height * 0.13,
                                    width: screensize.width * 0.8,
                                    child: Text(
                                      "${snapshot.data!.docs[index]["Description"].toString()}",
                                      style: TextStyle(fontSize: 16),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    }),
            Container(height: 500,width:MediaQuery.of(context).size.width,),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
