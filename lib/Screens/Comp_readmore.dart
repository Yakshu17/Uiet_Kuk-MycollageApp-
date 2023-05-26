import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CompReadmore extends StatefulWidget {
  const CompReadmore({Key? key}) : super(key: key);

  @override
  State<CompReadmore> createState() => _CompReadmoreState();
}

class _CompReadmoreState extends State<CompReadmore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width*0.99,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //set border radius to 50% of square height and width
                  image: DecorationImage(
                    image: AssetImage("assets/images/Computersciencedept.jpg"),
                    fit: BoxFit.cover, //change image fill type
                  ),
                ),
              ),
      //      SizedBox(
      //      child: Image.asset('assets/images/Computerdept.png',
      // ),
      //      ),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8,0 ),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.orange),
                  //color: Colors.orange,
                  height: MediaQuery.of(context).size.height*0.047,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Icon( // <-- Icon
                        Icons.ac_unit_outlined,
                        size: 24.0,
                      ),
                      SizedBox(width: 6,),
                      Text("Department of Computer Science & Engineering",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.3)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      child: Text("Vision",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("To become a leader of education, research and innovation   in the area of Computer Science and Engineering and to produce under graduates who are globally recognised as innovative and well prepared computing professionals."),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      child: Text("Mission",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("1. To create, share and disseminate knowledge through research and education in the theory and application of computing."),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("2. To train the students in different aspects of computing discipline for enhancing, augmenting and updating their technical skills"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("3. To inculcate the spirit of analysis, team work, innovation and professionalism among the students."),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.orange),
                  //color: Colors.orange,
                  height: MediaQuery.of(context).size.height*0.047,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Icon( // <-- Icon
                        Icons.ac_unit_outlined,
                        size: 24.0,
                      ),
                      SizedBox(width: 6,),
                      Text("About Department of Computer Science & Engineering",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.2)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("The Department of Computer Science & Engineering was established in the year 2004. The Department started with an intake of 60 in B. Tech. degree programme & 20 in M. Tech. (Software Engineering). In view of the increasing importance of the Computer Engineering discipline, the intake of the department was increased to 120 in 2007. The department is proud to have a record of almost 100% placement of all eligible students for last 05 years."),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("The department also offers two M. Tech. Program in Computer Engineering with an intake of 18 students. Department started Ph.D. program in 2013. More than 10 Ph.D.'s are in progress and many are awarded so far."),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("Our experienced and highly qualified faculty are committed to helping our students in improving and enhancing their analytical thinking ability and creativity, and in understanding the professional issues related to ethics, professional conduct, economics, societal needs and their role in the technologically globalised world. The department is committed to foster a creative and innovative research environment. Faculty of the Department of Computer Science & Engineering have specialized areas for advanced studies and research in Soft Computing, Neural Networks & Fuzzy Logic, Data Mining, Big Data Analytics, Unix & Linux, Artificial Intelligence, Software Engineering, Computer Networks, Social Networks, Data Science, Wireless sensor and Mobile Ad hoc networking."),
                ),
              ),


            ],
          ),
        ),



      ),
    );
  }
}
