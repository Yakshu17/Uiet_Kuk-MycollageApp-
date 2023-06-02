import 'package:flutter/material.dart';

class AdmissionBioTech extends StatefulWidget {
  const AdmissionBioTech({Key? key}) : super(key: key);

  @override
  State<AdmissionBioTech> createState() => _AdmissionBioTechState();
}

class _AdmissionBioTechState extends State<AdmissionBioTech> {
  @override
  Widget build(BuildContext context) {
    String totalSeats = "60";
    String? leftFromPCB;
    String? leftFromJeeMains;

    return SafeArea(
        child: Scaffold(
          body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/uietbiotechadmission.jpg',height: 180,fit: BoxFit.cover,)),
                    SizedBox(height: 12),
                    Container(
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      child: Center(child: RichText(
                          text: TextSpan(
                              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 22),
                              children: [
                                TextSpan(text: "Welcome in "),
                                TextSpan(text: "Bio-Tech ",
                                    style: TextStyle(fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.orange)),
                                TextSpan(text: "department")
                              ]
                          )
                      ),)
                    ),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text("UIET is one of the pioneer institutes providing both B.Tech. and M.Tech. in Biotechnology department."
                          " The department have organized several national level "
                          "seminars and conferences on recent advancements,"
                          " which are attended by various eminent scholars of the field. Many special executive meets aslo have been organised by "
                          "the department providing an working insight.",
                        style: TextStyle(fontSize: 14, color: Colors.black87,),),
                    ),
                    SizedBox(height: 8,),
                    Text("Admission Criteria:", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
                    SizedBox(height: 5,),
                    Text("Total available seats in the department are 60. Out of these 60 seats 40 seats are "
                        "allotted through PCB(Phy-Chem-Bio) merit list. Rest of 20 seats are allotted "
                        "on the basis of the rank obtained in Jee Mains Exam.",
                        style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500)),
                    SizedBox(height: 8,),
                    Text("Seats Availability:", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
                    SizedBox(height: 8,),
                    Container(
                      child: Table(
                      defaultColumnWidth: FixedColumnWidth(100.0),
                      border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1),
                      children: [
                       TableRow( children: [
                        Column(children:[Text('Total Seats', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))]),
                        Column(children:[Text('Left from 40 PCB', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500))]),
                        Column(children:[Text('Left from Jee Mains 20', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,))]),
                      ],),
                        TableRow( children: [
                          Column(children:[Text('$totalSeats', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))]),
                          Column(children:[Text('$leftFromPCB', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500))]),
                          Column(children:[Text('$leftFromJeeMains', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500))]),
                        ],),
                      ])),
                    SizedBox(height: 8,),
                    Text("Year wise Cut-offs:", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500))
                  ],
                ),
              )
          ),
        ));
  }
}
