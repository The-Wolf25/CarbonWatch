import 'package:carbonwatch/Screens/Page2.dart';
import 'package:carbonwatch/Widgets_Reuse/Appbuttons.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:carbonwatch/Widgets_Reuse/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Entername extends StatefulWidget {
  const Entername({Key? key}) : super(key: key);

  @override
  State<Entername> createState() => _EnternameState();
}

class _EnternameState extends State<Entername> {
  TextEditingController _name = TextEditingController();
  bool _validate = false;
  @override
  dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'Assets/images/Backpic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Column(
                    children: [
                      textt(
                        content: 'Enter Your Name',
                        fontsi: 22,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      MyWidget(
                          con: _name,
                          backgroundcolor: colors.shade_two,
                          fontsi: 16,
                          text: '',
                          textcolor: Color.fromARGB(255, 151, 150, 150)),
                      SizedBox(
                        height: 65,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      page2(name: _name.text)));
                        },
                        child: Appbuttons(
                          Textcolor: colors.white,
                          Backcolor: colors.shade_four,
                          width: 165,
                          text: 'Next',
                          hieght: 45,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
