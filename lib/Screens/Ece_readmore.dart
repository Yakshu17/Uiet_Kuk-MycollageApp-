import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class EceReadmore extends StatefulWidget {
  const EceReadmore({Key? key}) : super(key: key);

  @override
  State<EceReadmore> createState() => _EceReadmoreState();
}

class _EceReadmoreState extends State<EceReadmore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  //set border radius to 50% of square height and width
                  image: DecorationImage(
                    image: AssetImage("assets/images/Ecelogo.jpg"),
                    fit: BoxFit.cover, //change image fill type
                  ),
                ),
              ),
              //      SizedBox(
              //      child: Image.asset('assets/images/Computerdept.png',
              // ),
              //      ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(color: Colors.orange),
                //color: Colors.orange,
                height: MediaQuery.of(context).size.height*0.065,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    Icon( // <-- Icon
                      Icons.ac_unit_outlined,color: Colors.white,
                      size: 24.0,
                    ),
                    SizedBox(width: 6,),
                    Text("About ECE Department",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("The Department of Electronics and Communication Engg.(ECE)was established in the year 2004. The department admires technology Development through innovations and its exploitation for the benefit of human kinds.",style: TextStyle()),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("The ECE department at UIET is running B.Tech and M.Tech Programs in Electronics & Communication Engineering with intake of 120 and 20 respectively. The department has more than 450 undergraduate and postgraduate students."),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: SizedBox(
                  child: Text("The department is also running Govt. of India sponsored NPMOS program. Besides, the department is equipped with electronics components worth more than Rs. 12.00 Lacs and under the active guidance of faculty members, the students have also been working on various microcontroller, embedded system based electronics projects."),
                ),
              ),
              SizedBox(height:10,),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Text(" Various workshops on latest electronic design automation tools like Multisim, Orcad ,Xillinx ,Labview , pSpice, Matlab to make students proficient in electronic design automation tools are being organized regularly ."),
                )
                ,)


            ],
          ),
        ),



      ),
    );
  }
}
