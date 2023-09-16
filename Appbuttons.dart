import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbuttons extends StatelessWidget {
  final Color Textcolor;
  final Color Backcolor;

  double width;
  double hieght;
  final String text;
  Appbuttons(
      {Key? key,
      required this.Textcolor,
      required this.Backcolor,
      required this.width,
      required this.hieght,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      decoration: BoxDecoration(
          color: Backcolor, borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
