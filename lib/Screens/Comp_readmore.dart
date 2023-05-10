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
                padding: EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Readmore about ",
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
                          TyperAnimatedText("Computer Science",
                              speed: const Duration(milliseconds: 150)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(
                    'The Department of Computer Science & Engineering was established in the year 2004. The Department started with an intake of 60 in B. Tech. degree programme & 20 in M. Tech. (Software Engineering). In view of the increasing importance of the Computer Engineering discipline, the intake of the department was increased to 120 in 2007.'
                        ' The department is proud to have a record of almost 100% placement of all eligible students for last 05 years.The department also offers two M. Tech. '
                        'Program in Computer Engineering with an intake of 18 students. Department started Ph.D. program in 2013. More than 10 Ph.D.s are in progress and many are awarded so far.'
                        'Our experienced and highly qualified faculty are committed to helping our students in improving and enhancing their analytical thinking ability and creativity, and in understanding the professional issues related to ethics, professional conduct, economics, societal needs and their role in the technologically globalised world.'
                        ' The department is committed to foster a creative and innovative research environment. Faculty of the Department of Computer Science & Engineering have specialized areas for advanced studies and research in Soft Computing, Neural Networks & Fuzzy Logic, Data Mining, Big Data Analytics, Unix & Linux, Artificial Intelligence, '
                        'Software Engineering, Computer Networks, Social Networks, Data Science, Wireless sensor and Mobile Ad hoc networking.To keep pace with the current technological trends, the Department has introduced a credit based postgraduate programme leading to M. Tech. in Computer Engineering in the year 2009.'
                        ' Ever since its establishment, the Department has always been on a high growth path and has experienced and dedicated faculty with a strong commitment to engineering education. Our students are exposed to up-to-date equipment, technology and techniques.'
                        ' We have well equipped laboratories with state-of-the-art facilities like GPU, Blade sever, servers, thin clients, workstation and desktops (from IBM, HP, DELL etc.).'
                        ' Induction of new courses from time to time enables the students to keep abreast of recent technological developments. Flexibility in curriculum is provided through Electives Seminars and Projects.',
                    style: TextStyle(
                        fontSize: 15, color: Colors.black87, letterSpacing: 0.4),
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
