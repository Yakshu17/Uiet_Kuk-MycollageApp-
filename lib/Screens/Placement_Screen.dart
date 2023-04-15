import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uiet_kuk/Utils/Constants.dart';
import 'package:uiet_kuk/Widgets/home_slider.dart';
import 'package:uiet_kuk/Widgets/placement_background_image.dart';

class PlacementScreen extends StatefulWidget {
  const PlacementScreen({Key? key}) : super(key: key);

  @override
  State<PlacementScreen> createState() => _PlacementScreenState();
}

class _PlacementScreenState extends State<PlacementScreen> {
  @override
  Widget build(BuildContext context) {
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
                pause: const Duration(milliseconds: 700),
                animatedTexts: [
                  TyperAnimatedText("UIET KURUKSHETRA",
                      speed: const Duration(milliseconds: 150)),
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
                          "Congratulations Yashikan & Vandana for getting selected in HUGHES at 10.8 LPA",
                          speed: const Duration(milliseconds: 150)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
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
              height: 30,
            ),

          ],
        ),
      ),
    ));
  }
}
