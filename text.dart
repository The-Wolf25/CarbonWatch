import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class textt extends StatelessWidget {
  final String content;
  double fontsi;
  textt({Key? key, required this.content, required this.fontsi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: fontsi,
          color: colors.shade_four,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500),
    );
  }
}
