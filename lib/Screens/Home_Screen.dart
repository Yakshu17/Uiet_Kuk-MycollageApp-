import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
                height: 250,
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/uiet.jpg',
                  fit: BoxFit.cover,
                )),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'WELOME TO ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              TextSpan(
                text: 'UIET KURUKSHETRA',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    fontSize: 20),
              ),
            ])),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1.5,
              width: 100,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(
                  'University Institute of Engineering & Technology (UIET) was established by Kurukshetra University '
                  'in 2004 with objective to develop as a "Centre of Excellence" and offer quality technical '
                  'education and to undertake research in Engineering & Technology',
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'Presently, the institute is offering four B. Tech (Computer Science & Engineering,'
                  ' Electronics and Communication Engineering, Biotechnology and Mechanical Engineering) ',
                  style: TextStyle(fontSize: 13, color: Colors.black87)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                  'Seven M. Tech. course in the technically important disciplines Computer Science & Engineering,'
                  ' Electronics and Communication Engineering, Mechanical Engg. (with the specialization of'
                  ' Industrial & Production Engg., and Thermal Engg.), Biotechnology, Defence Technology and'
                  ' Electrical Engg.',
                  style: TextStyle(fontSize: 13, color: Colors.black87)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/uiet_director.png'),
                          radius: 35,
                        ),
                        radius: 37,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "PROF. SUNIL DHINGRA",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Director, UIET KUK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SizedBox(
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/vc_ku.jpg'),
                          radius: 35,
                        ),
                        radius: 37,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "PROF. SOM NATH SACHDEVA",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vice-Chancellor, KUK',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SizedBox(
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
            SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Text(
                'COURSES OFFERED BY UIET',
                style:
                    TextStyle(color: Colors.black87, fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: 2,width: 70,color: Colors.grey,),
            SizedBox(height: 35,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/laptop.png',height: 40,width: 130,),
                          SizedBox(height: 5,),
                          Text('Computer Science & Eng',style: TextStyle(fontSize:9),),
                          SizedBox(height: 5,),
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo,
                            ),

                            child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                          )

                        ],
                      ),),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/cpu.png',height: 40,width: 130,),
                            SizedBox(height: 5,),
                            Text('Electronics & Communication Eng',style: TextStyle(fontSize:9),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),

                              child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                            )

                          ],
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/mechanic.png',height: 40,width: 130,),
                            SizedBox(height: 5,),
                            Text('Mechanical Engineering',style: TextStyle(fontSize:9),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),

                              child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                            )

                          ],
                        ),),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/biotech.png',height: 40,width: 130,),
                            SizedBox(height: 5,),
                            Text('Bio Technology Dept',style: TextStyle(fontSize:9),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),

                              child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                            )

                          ],
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/electrical.png',height: 40,width: 130,),
                            SizedBox(height: 5,),
                            Text('Electrical Engineering Dept',style: TextStyle(fontSize:9),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),

                              child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                            )

                          ],
                        ),),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(height: 100,width: MediaQuery.of(context).size.width*0.45,color: Colors.black12.withOpacity(0.06),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/science.png',height: 40,width: 130,),
                            SizedBox(height: 5,),
                            Text('Applied Science Dept',style: TextStyle(fontSize:9),),
                            SizedBox(height: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),

                              child: Center(child: Text("Read More",style: TextStyle(fontSize: 6,color: Colors.white),)),
                            )

                          ],
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Text("OUR RECRUITERS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Container(height: 2,width: 70,color: Colors.grey,),
                SizedBox(height: 30,),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
