import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'AddNotification.dart';

class AdminNotifyscreen extends StatefulWidget {
  const AdminNotifyscreen({Key? key}) : super(key: key);

  @override
  State<AdminNotifyscreen> createState() => _AdminNotifyscreenState();
}

class _AdminNotifyscreenState extends State<AdminNotifyscreen> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance
      .collection('Notification_Data')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Add_Notification(),));
          },child: Icon(Icons.add)),
          body: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text("NOTIFICATIONS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Container(
                height:1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.5),
              ),
              SizedBox(height: 30,),
              StreamBuilder<QuerySnapshot>(
                stream: firestore,
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(
                      color: Colors.indigo,
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
                          padding: EdgeInsets.only(left: 10),
                          margin: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.grey.shade100,blurRadius: 0,spreadRadius: 2)],
                            border: Border.all(color: Colors.indigo),
                            color: Color.fromRGBO(213, 217, 220, 0.44),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *0.27,
                                width: MediaQuery.of(context).size.width * 0.37,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height *0.19,
                                          width: MediaQuery.of(context).size.width * 0.3,
                                          child: CircleAvatar(
                                            radius: 60,
                                            backgroundColor: Colors.white70,
                                            backgroundImage: NetworkImage(snapshot
                                                .data!.docs[index]["Notification_Img"]
                                                .toString()),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context).size.height *0.07,
                                          width: MediaQuery.of(context).size.width * 0.37,
                                          child: Column(
                                            children: [
                                              Text(
                                                snapshot.data!.docs[index]["Title"]
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.32,
                                width: MediaQuery.of(context).size.width * 0.54,
                                //color:Colors.orange.shade300,
                                padding: EdgeInsets.only(left: 10,top: 20,right: 3),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Description : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            SizedBox(
                                              width:100,
                                              child: Text(snapshot.data!.docs[index]["Description"]
                                                  .toString(),style: TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Notification-Type : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Notification-Type"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),

                                        Row(
                                          children: [
                                            Text("Standard : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Standard"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Student Name : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Student Name"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Date : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["date"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),



                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
