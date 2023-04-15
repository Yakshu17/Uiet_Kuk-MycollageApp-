import 'package:flutter/material.dart';
import 'package:uiet_kuk/Utils/utils.dart';

class Profile_Item extends StatelessWidget {
  final IconData icon;
  final String title;
  VoidCallback callback;
  Profile_Item(
      {Key? key,
      required this.title,
      required this.icon,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: ListTile(
            title: Text(
              "$title",
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            leading: Icon(icon,color: Colors.black,),
          ),
        ),
        IconButton(
            onPressed: callback,
            icon: Icon(
              Icons.navigate_next,
              color: Colors.black,
            )),
      ],
    );
  }
}
