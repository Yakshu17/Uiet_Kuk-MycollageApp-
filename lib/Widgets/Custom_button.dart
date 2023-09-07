import 'package:flutter/material.dart';

class CustomButtonbkImg extends StatefulWidget {
  final String text;
  final Icon icon;
  final VoidCallback callback;
  const CustomButtonbkImg(
      {Key? key,
        required this.text,
        required this.icon,
        required this.callback})
      : super(key: key);

  @override
  State<CustomButtonbkImg> createState() => _CustomButtonbkImgState();
}

class _CustomButtonbkImgState extends State<CustomButtonbkImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      //color: Colors.orange,
      child: TextButton(
          onPressed: widget.callback,
          style: TextButton.styleFrom(
           backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(9))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.text,
                style: const TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 3,
              ),
              widget.icon,
            ],
          )),
    );
  }
}