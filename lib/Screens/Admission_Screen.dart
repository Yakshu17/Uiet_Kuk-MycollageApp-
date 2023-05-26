import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiet_kuk/Utils/utils.dart';

class AdmissionScreen extends StatefulWidget {
  const AdmissionScreen({Key? key}) : super(key: key);

  @override
  State<AdmissionScreen> createState() => _AdmissionScreenState();
}

class _AdmissionScreenState extends State<AdmissionScreen> {
  @override
  Widget build(BuildContext context) {
    Size screen = Utils().getScreenSize();
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            color: Colors.orange,
            width: screen.width,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.graduationCap,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "B.Tech Admissions",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            width: screen.width * 0.94,
            child: Column(
              children: [
                Text(
                  "It is for information to all candidates that University Institute of Engg."
                  " & Technology, KUK will admit students in various Engineering programmes "
                  "(B.Tech first year & B.Tech LEET), for academic session 2023-24 through"
                  " National Level Test JEE Main /Online Entrance Test conducted by HSTES.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "UIET offers Full time B.Tech Degree programs in various disciplines"
                  " of Engineering and Technology. Admission to B.Tech programs shall be made "
                  "as per the rules prescribed by the UIET from time to time. The intake "
                  "in various B.Tech programmes are-",
                  style: TextStyle(fontSize: 16),
                ),

//----------------------------------------Create Btech Dept Table ---------------------------------------------------
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: screen.width*0.14,
                      height: 60,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),  color: Colors.orange,),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text("S.N",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      width: screen.width*0.7,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),  color: Colors.orange,),
                      child: Center(child: Text("Branch",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      width: screen.width*0.3,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),  color: Colors.orange,),
                      child: Center(child: Text("Intake in Ist Year",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      width: screen.width*0.5,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),  color: Colors.orange,),
                      child: Center(child: Text("Intake in 2nd Year Leet",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screen.width*0.12,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("1",style: TextStyle(fontSize: 16),)),
                    ),
                    Container(
                      width: screen.width*0.7,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("Computer Science & Engineering",style: TextStyle(fontSize: 15),)),
                    ),
                    Container(
                      width: screen.width*0.3,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text("150",style: TextStyle(fontSize: 15,),)),
                    ),
                    Container(
                      width: screen.width*0.5,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("10% of 1st Year Seats",style: TextStyle(fontSize: 16),)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screen.width*0.12,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.shade200,
                      child: Center(child: Text("2",style: TextStyle(fontSize: 16),)),
                    ),
                    Container(
                      width: screen.width*0.7,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1), color: Colors.grey.shade200,),
                      child: Center(child: Text("Electronics & Communication Engineeringg",style: TextStyle(fontSize: 15),)),
                    ),
                    Container(
                      width: screen.width*0.3,
                      height: 60,
                      color: Colors.grey.shade200,
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text("150",style: TextStyle(fontSize: 15,),)),
                    ),
                    Container(
                      width: screen.width*0.5,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("10% of 1st Year Seats",style: TextStyle(fontSize: 16),)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screen.width*0.12,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("3",style: TextStyle(fontSize: 16),)),
                    ),
                    Container(
                      width: screen.width*0.7,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("Mechanical Engineering",style: TextStyle(fontSize: 15),)),
                    ),
                    Container(
                      width: screen.width*0.3,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text("150",style: TextStyle(fontSize: 15,),)),
                    ),
                    Container(
                      width: screen.width*0.5,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("10% of 1st Year Seats",style: TextStyle(fontSize: 16),)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screen.width*0.12,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      color: Colors.grey.shade200,
                      child: Center(child: Text("4",style: TextStyle(fontSize: 16),)),
                    ),
                    Container(
                      width: screen.width*0.7,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1), color: Colors.grey.shade200,),
                      child: Center(child: Text("BioTechnology Engineeringg",style: TextStyle(fontSize: 15),)),
                    ),
                    Container(
                      width: screen.width*0.3,
                      height: 60,
                      color: Colors.grey.shade200,
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text("60",style: TextStyle(fontSize: 15,),)),
                    ),
                    Container(
                      width: screen.width*0.5,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),),
                      child: Center(child: Text("10% of 1st Year Seats",style: TextStyle(fontSize: 16),)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    )));
  }
}

TableRow CreateRow(List<String> cells) {
  return TableRow(
    children: cells
        .map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                e,
                style: TextStyle(fontSize: 15),
              )),
            ))
        .toList(),
  );
}
