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
          Navigator.push(context,MaterialPageRoute(builder: (context) => const AddPlacementDetails(),));
          },child: const Icon(Icons.add)),
          body: Container(child: const Center(child: Text("No Placement Detail Found ?")),)),
    );
  }
}
