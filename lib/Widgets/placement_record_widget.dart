import 'package:flutter/material.dart';

class PlacementRecordWidget extends StatefulWidget {
  final String img_url;
  final String branchtext;
  final VoidCallback callback;
  const PlacementRecordWidget(
      {Key? key,
      required this.img_url,
      required this.branchtext,
      required this.callback})
      : super(key: key);

  @override
  State<PlacementRecordWidget> createState() => _PlacementRecordWidgetState();
}

class _PlacementRecordWidgetState extends State<PlacementRecordWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        //color: Color.fromRGBO(213, 217, 220, 0.9),
          color:Colors.white,
          boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.001,blurStyle: BlurStyle.outer,spreadRadius:0.001 )],
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(widget.img_url), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            widget.branchtext,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: OutlinedButton(
              onPressed: widget.callback,
              child: Text("VIEW PLACEMENT",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,letterSpacing: 0.5,fontSize: 12),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
