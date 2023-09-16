import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbarr extends StatelessWidget {
  const appbarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info_outline,
              color: colors.white,
            ))
      ],
      backgroundColor: colors.shade_four,
      title: Text(
        'CarbonWatch',
        style: TextStyle(
            fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
