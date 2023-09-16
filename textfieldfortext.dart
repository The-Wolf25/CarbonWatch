import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidgett extends StatefulWidget {
  final Color textcolor;
  final Color backgroundcolor;
  double fontsi;

  final String text;
  final TextEditingController con;

  MyWidgett(
      {Key? key,
      required this.con,
      required this.backgroundcolor,
      required this.fontsi,
      required this.text,
      required this.textcolor})
      : super(key: key);

  @override
  State<MyWidgett> createState() => _MyWidgettState();
}

class _MyWidgettState extends State<MyWidgett> {
  bool _val = false;
  final _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        keyboardType: TextInputType.name,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
        ],
        validator: ((value) {
          if (value == null || value.isEmpty) {
            return 'Enter value please';
          }
          return null;
        }),
        controller: widget.con,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(25),
          ),
          errorBorder: InputBorder.none,
          fillColor: widget.backgroundcolor,
          filled: true,
          hintText: widget.text,
          hintStyle: TextStyle(
            fontSize: widget.fontsi,
            color: widget.textcolor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
