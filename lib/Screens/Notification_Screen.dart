import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Widgets/FooterWidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance.collection('Notification_Data').snapshots();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text("NOTIFICATIONS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              const SizedBox(height: 20,),
              Container(
                height:1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.5),
              ),
              const SizedBox(height: 30,),
              StreamBuilder<QuerySnapshot>(
                stream: firestore,
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                      color: Colors.orange,
                    );
                  }
                  if (snapshot!.hasError) {
                    return const Text("An Error Occured !");
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(left: 10),
                          margin: const EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.46,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: Colors.grey.shade100,blurRadius: 0,spreadRadius: 2)],
                            border: Border.all(color: Colors.orange),
                            color: const Color.fromRGBO(213, 217, 220, 0.44),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 15,),
                              InkWell(
                                onTap: (){
                                  showDialog(context: context,
                                      barrierDismissible: true,
                                      builder: (context) {
                                        return SizedBox(
                                          height: MediaQuery.of(context).size.height*0.2,
                                          width: MediaQuery.of(context).size.width,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(height: 35,),
                                              ElevatedButton.icon(   // <-- ElevatedButton
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.orange, // Background color
                                                ),
                                                icon: const Icon(
                                                  Icons.close,
                                                  size: 24.0,
                                                ),
                                                label: const Text('Close'),
                                              ),
                                              Image(
                                                image:NetworkImage(snapshot
                                                    .data!.docs[index]["Notification_Img"]
                                                    .toString()),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: CircleAvatar(
                                  radius: 76,
                                  backgroundColor: Colors.white70,
                                  backgroundImage: NetworkImage(snapshot
                                      .data!.docs[index]["Notification_Img"]
                                      .toString()),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                snapshot.data!.docs[index]["Title"]
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(height: 10,),
                                  const Text("Description : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                  Text(snapshot.data!.docs[index]["Description"]
                                      .toString(),style: const TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,),
                                  const SizedBox(height: 10,),
                                  const Text("Notification-Type : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                  Text(snapshot.data!.docs[index]["Notification-Type"]
                                      .toString(),style: const TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text("Standard : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                  Text(snapshot.data!.docs[index]["Standard"]
                                      .toString(),style: const TextStyle(fontSize: 14),),
                                  const SizedBox(height: 10,),
                                  const Text("Date : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                  Text(snapshot.data!.docs[index]["date"]
                                      .toString(),style: const TextStyle(fontSize: 14),),
                                ],
                              )
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
