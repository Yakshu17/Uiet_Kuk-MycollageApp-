import 'package:flutter/material.dart';
import 'package:uiet_kuk/Admins/AdminsScreens/AddPlacementDetails.dart';

class AdminPlacementScreen extends StatefulWidget {
  const AdminPlacementScreen({Key? key}) : super(key: key);

  @override
  State<AdminPlacementScreen> createState() => _AdminPlacementScreenState();
}

class _AdminPlacementScreenState extends State<AdminPlacementScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (index) => AddPlacementDetails()));
                      },
                      child: Text(
                        "Add Student",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      )),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),

            ],
          )),
    );
  }
}
