import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:uiet_kuk/Screens/Applied_readmore.dart';
import 'package:uiet_kuk/Screens/Ece_readmore.dart';
import 'package:uiet_kuk/Screens/Electrical_readmore.dart';
import 'package:uiet_kuk/Screens/Mech_readmore.dart';
import 'package:uiet_kuk/Screens/bio_readmore.dart';
import 'package:uiet_kuk/Utils/Constants.dart';
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:uiet_kuk/Widgets/FooterWidget.dart';
import 'package:uiet_kuk/Widgets/home_slider.dart';

import 'Comp_readmore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            HomeSlider(
              height: 225,
              imglist: home_slider,
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " WELCOME TO  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 21,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 2,
                          )
                        ]),
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 21,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: Colors.orange,
                            blurRadius: 2,
                          )
                        ]),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(milliseconds: 700),
                      animatedTexts: [
                        TyperAnimatedText("UIET KURUKSHETRA",
                            speed: const Duration(milliseconds: 150)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(
                  'University Institute of Engineering & Technology (UIET) was established by Kurukshetra University '
                  'in 2004 with objective to develop as a "Centre of Excellence" and offer quality technical '
                  'education and to undertake research in Engineering & Technology',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black87, letterSpacing: 0.4),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'Presently, the institute is offering four B. Tech (Computer Science & Engineering,'
                  ' Electronics and Communication Engineering, Biotechnology and Mechanical Engineering) ',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black87, letterSpacing: 0.4)),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'Seven M.Tech. course in the technically important disciplines Computer Science & Engineering,'
                  ' Electronics and Communication Engineering, Mechanical Engg. (with the specialization of'
                  ' Industrial & Production Engg., and Thermal Engg.), Biotechnology, Defence Technology and'
                  ' Electrical Engg.',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black87, letterSpacing: 0.4)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/uiet_director.png'),
                          radius: 35,
                        ),
                        radius: 37,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "PROF. SUNIL DHINGRA",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Director, UIET KUK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 210,
                        child: Text(
                            'It gives me immense pleasure to introduce University Institute of Engineering and Technology (UIET)'
                            ' which was established in 2004 in the campus of Kurukshetra University.',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black87)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/vc_ku.jpg'),
                          radius: 35,
                        ),
                        radius: 37,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "PROF. SOM NATH SACHDEVA",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Vice-Chancellor, KUK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 210,
                        child: Text(
                            'It is a matter of great pride that UIET was established in 2004 and established'
                            ' itself as a premier Institution in the state of Haryana, imparting technical & '
                            'valuable engineering education with good placements.',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black87)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 10,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.orange)),
                SizedBox(
                  child: Text(
                    'COURSES OFFERED BY UIET',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 2,
                          )
                        ]),
                  ),
                ),
                Container(
                    width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 2,
              width: 70,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CompReadmore(),
                            ));
                      },
                      child: Card(
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/laptop.png',
                                height: 40,
                                width: 130,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Computer Science & Eng',
                                style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Read More",
                                  style:
                                      TextStyle(fontSize: 7, color: Colors.white,fontWeight: FontWeight.bold),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EceReadmore(),
                            ));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/cpu.png',
                              height: 40,
                              width: 130,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Electronics & Comm Eng',
                              style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                              child: const Center(
                                  child: Text(
                                "Read More",
                                style:
                                    TextStyle(fontSize: 7, color: Colors.white,fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>MechReadmore(),));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/mechanic.png',
                              height: 40,
                              width: 130,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Mechanical Engineering',
                              style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                              child: const Center(
                                  child: Text(
                                "Read More",
                                style:
                                    TextStyle(fontSize: 6, color: Colors.white,fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>BioReadmore(),));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/biotech.png',
                              height: 40,
                              width: 130,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Bio Technology Dept',
                              style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                              child: const Center(
                                  child: Text(
                                "Read More",
                                style:
                                    TextStyle(fontSize: 6, color: Colors.white,fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>ElectricalReadmore(),));
                      },
                      child: Card(
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/electrical.png',
                                height: 40,
                                width: 130,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Electrical & Comp Eng',
                                style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Read More",
                                  style:
                                      TextStyle(fontSize: 6, color: Colors.white,fontWeight: FontWeight.bold),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>Appliedreadmore(),));
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/science.png',
                              height: 40,
                              width: 130,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Applied Science Dept',
                              style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                              child: const Center(
                                  child: Text(
                                "Read More",
                                style:
                                    TextStyle(fontSize: 6, color: Colors.white,fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 10,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.orange)),
                    SizedBox(
                      child: Text(
                        'OUR RECRUITERS',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.6),
                                blurRadius: 2,
                              )
                            ]),
                      ),
                    ),
                    Container(
                        width: 10,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 350,
                  child: HomeSlider(
                    height: 150,
                    imglist: recruiter_slider,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const FooterWidget(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
