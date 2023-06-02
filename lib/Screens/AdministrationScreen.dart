import 'dart:math' as math;
import 'package:uiet_kuk/Utils/utils.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AdministrationPage extends StatefulWidget {
  @override
  State createState() {
    return AdministrationPageState();
  }
}

class AdministrationPageState extends State<AdministrationPage> {
  @override
  Widget build(BuildContext context) {
    Size screen = Utils().getScreenSize();
    return Scaffold(
      appBar: AppBar(
        title: Text("Administartion"),
        backgroundColor: Colors.orange,
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.orange,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
            Card3(),
            Card4(),
          ],
        ),
      ),
    );
  }
}

const ViceChancellorText =
    "It is a matter of great pride that UIET was established in 2004 and established itself as a premier Institution in "
    "the state of Haryana, imparting technical & valuable engineering education with good placements. In a very short span of time, the institute"
    " has carved a niche for itself among the best technical institutes in Haryana and is a dream institute for budding engineers. This presentation "
    "is the brief of UIET activities, associations & facilities available and corporate linkages etc. I am sure that this presentation will provide us "
    "the approaches & ways to the corporates in learning & developing good relations. The dynamics of the fast-changing world urges the academicians to give"
    " the right impetus for making life-long learners out of students.I welcome all the students who chose to be a part of this premier University, I am sure "
    "that you will feel proud on being associated with us and make us equally proud with your academic excellence. In addition to creating fertile minds for professional "
    "and personal success we have committed ourselves to create responsible citizens who are the epitome of highest ethics and social conduct."
    "I wish all our students success in life.";

const RegistrarText =
    "It is a matter of pride to say that the Institute UIET KUK has excellent faculty, laboratories, workshops and other essential "
    "facilities like a modern well stocked central library for achieving academic excellence. We, in the Institute, provide our students a conducive "
    "environment to help them excel in their academic endeavours. We lay emphasis on the overall Development of a student so that he/she is ready to "
    "face emerging challenges posed by the highly competitive international business environment. The university has other essential infrastructure "
    "facilities like a well developed sports complex including a standard diving-cum- swimming pool, hostels, health Centre, etc for students. The "
    "sprawling University campus has been made fully wi-fi with telephony and broadband internet connectivity. I invite all the prospective candidates "
    "to the Institute to pursue their B.Tech & M.Tech programmes to achieve their chosen academic goals for which we are committed to provide a perfectly conducive environment."
    "I wish Best Of Luck For Success in Life.";

const DirectorText =
    "It gives me immense pleasure to introduce University Institute of Engineering and Technology (UIET) which was established in 2004 in the campus of "
    "Kurukshetra University. It was established with a motive 'MIND TO MARKET' so as to achieve excellence in the key areas of engineering and to produce "
    "talented and committed human resources driven by the spirit of innovation and team work. Presently the institute imparts training in the four key "
    "branches of Engineering namely Computer Science Engineering, Electronics and Communication Engineering, Bio-Technology and Mechanical Engineering. "
    "We offer both graduate and post graduate degrees in these branches of Engineering to about 1600 talented students from all parts of India having top ranks in JEE Mains."
    "The campus provides excellent infrastructure not only to hone the technical skills of the students but also provides ample space for leisure and extra curricular activities."
    " I am quite confident that your visit to our campus and interaction with the students will certainly elicit a good response from you. "
    "I whole heartedly extend a warm invitation to all who are interested innovation and are obsessed with quality.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 250,
                child: Image.asset(
                  "assets/images/vc_ku.jpg",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Prof. Som Nath Sachdeva\nVice-Chancellor",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                collapsed: Text(
                  ViceChancellorText,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          ViceChancellorText,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 250,
                child: Image.asset(
                  "assets/images/UietKUKRegistrar.jpg",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Dr. Sanjeev Sharma\nRegistrar",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                collapsed: Text(
                  RegistrarText,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          RegistrarText,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 250,
                child: Image.asset(
                  "assets/images/uiet_director.png",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Prof. Sunil Dhingra\nDirector",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                collapsed: Text(
                  DirectorText,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          DirectorText,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Roll Of Honors - Directors UIET",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                collapsed: Text(
                  "UIET KUK had very prominent personalities as their directors. Following is the list of all of our pride Directors",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            SizedBox(
                                height: 18,
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "Name",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 60,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Year",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 60,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Photograph",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "PROF. P. J. GEORGE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "16-AUG-2004 To\n 17-AUG-2006",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/prof P.J. George.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "PROF. O. P. BAJPAI",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "18-AUG-2006 T0\n 30-JUNE-2010",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/Prof O.P. BAJAI.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "PROF. DINESH AGARWAL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "10-AUG-2010 To\n 13-JAN-2015",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/Prof Dinesh Aggrawal.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "PROF. SUNIL DHINGRA",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "14-JAN-2015 To\n 20-MAY-2016",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/uiet_director.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                      child: Text(
                                    "PROF. C.C. TRIPATHI",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "20-MAY-2016 To\n 05-MAY-2022",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/prof C.C. Tripathi.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                      child: Text(
                                    "PROF. SUNIL DHINGRA",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Present",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  height: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/uiet_director.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
