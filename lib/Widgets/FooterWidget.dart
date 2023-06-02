import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../Utils/utils.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Column(
      children: [
        Container(
          height: screensize.height * 0.38,
          width: screensize.width,
          padding: EdgeInsets.only(left: 5, right: 5),
          color: Colors.orange,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Container(
                    width: screensize.width * 0.9,
                    child: Text(
                      "University Institute of Engineering and Technology, Kurukshetra University",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Pehowa Road, University, Haryana 136119",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screensize.width * 0.8,
                    child: Text(
                      "director.uiet@kuk.ac.in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screensize.width * 0.8,
                    child: Text(
                      "01744-239155",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.web,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: screensize.width * 0.8,
                    child: Text(
                      "www.kuk.ac.in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: screensize.height * 0.1,
          width: screensize.width,
          color: Colors.orange,
          padding: EdgeInsets.only(left: 8,right: 8),
          child: Center(
            child:  DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  shadows: [
                    Shadow(
                      color: Colors.white,
                      blurRadius: 2,
                    )
                  ]),
              child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(milliseconds: 700),
                animatedTexts: [
                  TyperAnimatedText("Developed By @Lalit Kumar , @Chander Shekhar , @Kapil Yadav From CSE B 3rd Year",
                      speed: const Duration(milliseconds: 150)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

/*
Text(
              "Developed By @ Lalit Kumar , @ Chander Shekhar , @ Kapil Yadav From CSE B 3rd Year",
              style: TextStyle(
                  color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16),
            ),
 */