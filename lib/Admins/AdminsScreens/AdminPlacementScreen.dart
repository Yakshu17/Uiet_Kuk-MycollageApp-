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
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => AddPlacementDetails(),));
        },child: Icon(Icons.add)),
          body: Container(child: Center(child: Text("No Placement Detail Found ?")),)),
    );
  }
}
