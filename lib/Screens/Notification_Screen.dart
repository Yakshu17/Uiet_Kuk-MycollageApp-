import 'package:flutter/material.dart';
import 'package:uiet_kuk/Widgets/FooterWidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text("Welcome To Notification Screen"),
            ),
            Container(height: 500,width:MediaQuery.of(context).size.width,),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
