import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/utils.dart';

class CustomViewAdmissionDetail extends StatefulWidget {
  String branchname;
  String seat_av;
  String total_seat;
  VoidCallback callback;
  CustomViewAdmissionDetail({Key? key,required this.branchname,required this.seat_av,required this.callback,required this.total_seat}) : super(key: key);

  @override
  State<CustomViewAdmissionDetail> createState() => _CustomViewAdmissionDetailState();
}

class _CustomViewAdmissionDetailState extends State<CustomViewAdmissionDetail> {
  @override
  Widget build(BuildContext context) {
    Size screen=Utils().getScreenSize();
    return Container(
      height: screen.height*0.2,
      width: screen.width*0.8,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      child:Column(
        children: [
          Text(widget.branchname,style: TextStyle(fontWeight: FontWeight.w600,fontSize:20),),
          SizedBox(height: 10,),
          Text("Total Seats ${widget.total_seat}",style: TextStyle(fontSize: 17),),
          SizedBox(height: 10,),
          Text("Currently Available Seat ${widget.seat_av}",style: TextStyle(fontSize: 17),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){}, child:Text("View Details")),
        ],
      ),
    );
  }
}
