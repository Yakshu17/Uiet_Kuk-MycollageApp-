import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Widgets/Student_AppBar.dart';

class BtechBtPlacement extends StatefulWidget {
  const BtechBtPlacement({Key? key}) : super(key: key);

  @override
  State<BtechBtPlacement> createState() => _BtechBtPlacementState();
}

class _BtechBtPlacementState extends State<BtechBtPlacement> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance
      .collection('UIET PLACEMENT')
      .doc('BTECH')
      .collection('BT').orderBy('Package')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: StudentAppBar(),
          body: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text("BT PLACEMENTS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
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
                            color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.1,blurStyle: BlurStyle.outer,spreadRadius:0.1 )],
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
                                            backgroundImage: AssetImage('assets/images/profile.jpg'),
                                            radius: 50,
                                            child: CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.white70,
                                              backgroundImage: NetworkImage(snapshot
                                                  .data!.docs[index]["Student_Img"]
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context).size.height *0.07,
                                          width: MediaQuery.of(context).size.width * 0.37,
                                          child: Column(
                                            children: [
                                              Text(
                                                snapshot.data!.docs[index]["Name"]
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
                                            Text("Company : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            SizedBox(
                                              width:100,
                                              child: Text(snapshot.data!.docs[index]["CompanyName"]
                                                  .toString(),style: TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Package : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Package"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),

                                        Row(
                                          children: [
                                            Text("Session : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Session"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Course : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Course"]
                                                .toString(),style: TextStyle(fontSize: 14),),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Text("Branch : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                            Text(snapshot.data!.docs[index]["Branch"]
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
