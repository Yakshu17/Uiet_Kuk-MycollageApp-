import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class CustomAnimatedWhiteBtn extends StatefulWidget {
  final String btntext;
  final VoidCallback callback;
  final double height;
  final double width;

  const CustomAnimatedWhiteBtn({Key? key,required this.btntext,required this.callback,required this.width,required this.height}) : super(key: key);

  @override
  State<CustomAnimatedWhiteBtn> createState() => _CustomAnimatedWhiteBtnState();
}

class _CustomAnimatedWhiteBtnState extends State<CustomAnimatedWhiteBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedButton(
        height: widget.height,
        width: widget.width,
        text: widget.btntext,
        onPress: widget.callback,
        backgroundColor: Colors.white,
        textStyle: TextStyle(color: Colors.black),
        selectedGradientColor:LinearGradient(colors:[ Colors.indigo,Colors.indigo]) ,
        selectedTextColor: Colors.white,
        transitionType: TransitionType.CENTER_ROUNDER,
        borderRadius: 19,
        borderColor: Colors.black,
      ),
    );
  }
}
