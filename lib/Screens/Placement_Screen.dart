import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiet_kuk/Screens/BtechBtPlacement.dart';
import 'package:uiet_kuk/Screens/BtechCsePlacement.dart';
import 'package:uiet_kuk/Screens/BtechEcePlacement.dart';
import 'package:uiet_kuk/Screens/BtechMePlacement.dart';
import 'package:uiet_kuk/Utils/Constants.dart';
import 'package:uiet_kuk/Widgets/home_slider.dart';
import 'package:uiet_kuk/Widgets/placement_background_image.dart';
import 'package:uiet_kuk/Widgets/placement_record_widget.dart';

class PlacementScreen extends StatefulWidget {
  const PlacementScreen({Key? key}) : super(key: key);

  @override
  State<PlacementScreen> createState() => _PlacementScreenState();
}

class _PlacementScreenState extends State<PlacementScreen> {
  String? selected_course="BTECH";

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSlider(
              height: 225,
              imglist: placement_slider,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "PLACEMENT DRIVE OF",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: Colors.black,
                  fontSize: 29,shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.6),
                  blurRadius: 2,
                )
              ]),
            ),
            SizedBox(
              height: 7,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 26,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                shadows: [Shadow(color: Colors.orange,blurRadius: 2)]
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(milliseconds: 1000),
                animatedTexts: [
                  TyperAnimatedText("UIET KURUKSHETRA",
                      speed: const Duration(milliseconds: 350)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/placed3.jpg'),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/placed2.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      color: Colors.indigo),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(milliseconds: 700),
                    animatedTexts: [
                      TyperAnimatedText(
                          "Congratulations Yashika & Vandana for getting selected in HUGHES at 10.8 LPA",
                          speed: const Duration(milliseconds: 150)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(height: 1,width: double.infinity,color: Colors.black.withOpacity(0.2),),
            SizedBox(
              height: 30,
            ),
            Text(
              'UIET PLACEMENT RECORDS',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.6),
                      blurRadius: 2,
                    )
                  ]),
            ),
            SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Select Your Course ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromRGBO(213, 217, 220,0.6),),
                  width: screenSize.width * 0.4,
                  padding: EdgeInsets.only(left: 15,top: 5),
                  child: DropdownButtonFormField<String>(

                    alignment: Alignment.topCenter,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                    hint: Text("BTECH",style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'GoogleFont',
                        color: Colors.black),),
                    value: selected_course,
                    items: courses.map((e) {
                      return DropdownMenuItem(
                        child: Text(e,style: TextStyle(fontSize: 13),),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        selected_course=val;
                      });

                    },
                  ),
                ),

              ],
            ),
            SizedBox(height: 50,),
            selected_course=='BTECH'?
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 1,width: MediaQuery.of(context).size.width*0.3,color: Colors.grey.withOpacity(0.7),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("BTECH BRANCHES"),
                  ),
                  Container(height: 1,width: MediaQuery.of(context).size.width*0.3,color: Colors.grey.withOpacity(0.7),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlacementRecordWidget(callback: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BtechCsePlacement(),));
                  },branchtext: "CSE Records",img_url: 'assets/images/csebk.jpg'),
                  PlacementRecordWidget(callback: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context) => BtechEcePlacement(),));

                  },branchtext: "ECE Records",img_url: 'assets/images/ecebk.jpg'),
                ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlacementRecordWidget(callback: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BtechMePlacement(),));
                  },branchtext: "ME Records",img_url: 'assets/images/mebk.jpg'),
                  PlacementRecordWidget(callback: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BtechBtPlacement(),));
                  },branchtext: "BIOTECH Records",img_url: 'assets/images/biotechbk.jpg'),
                ],
              ),
            ],):
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 1,width: MediaQuery.of(context).size.width*0.3,color: Colors.grey.withOpacity(0.7),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("MTECH BRANCHES"),
                  ),
                  Container(height: 1,width: MediaQuery.of(context).size.width*0.3,color: Colors.grey.withOpacity(0.7),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlacementRecordWidget(callback: (){},branchtext: "CSE Records",img_url: 'assets/images/mtech.jpg'),
                  PlacementRecordWidget(callback: (){},branchtext: "ECE Records",img_url: 'assets/images/ecebk.jpg'),
                ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlacementRecordWidget(callback: (){},branchtext: "ME Records",img_url: 'assets/images/mebk.jpg'),
                  PlacementRecordWidget(callback: (){},branchtext: "EE Records",img_url: 'assets/images/eebk.jpg'),
                ],
              ),
            ],),
            SizedBox(height: 50,),


          ],
        ),
      ),
    ));
  }
}
