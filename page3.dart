import 'package:carbonwatch/Screens/EnterName.dart';
import 'package:carbonwatch/Screens/Page2.dart';
import 'package:carbonwatch/Screens/options.dart';
import 'package:carbonwatch/Screens/page4.dart';
import 'package:carbonwatch/Screens/page5.dart';
import 'package:carbonwatch/Widgets_Reuse/Appbuttons.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class page3 extends StatefulWidget {
  String end;
  page3({Key? key, required this.end}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  String? nam;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: InkWell(
            onTap: () {
              setState(() {});
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Entername()));
            },
            child: Container(
              child: Image.asset('Assets/images/bac.png', fit: BoxFit.contain),
            ),
          ),
        ),
        backgroundColor: colors.shade_four,
        title: Text(
          'CarbonWatch',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 141, 138, 138),
                              width: 4,
                            ),
                            color: Color.fromARGB(255, 147, 192, 223),
                            borderRadius: BorderRadius.circular(14)),
                        child: Text(
                          'Home',
                          style: TextStyle(color: colors.white),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page4()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 147, 192, 223),
                          borderRadius: BorderRadius.circular(14)),
                      child: Text(
                        'Reduce',
                        style: TextStyle(color: colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => optionss()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 147, 192, 223),
                          borderRadius: BorderRadius.circular(14)),
                      child: Text(
                        'Tracker',
                        style: TextStyle(color: colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: textt(
                      content:
                          'Your Yearly Carbon Emission (approx):\n${widget.end}',
                      fontsi: 25)),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset('Assets/images/cha.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Image.asset('Assets/images/carbonn.png'),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page2(name: nam.toString())));
                },
                child: Appbuttons(
                  Textcolor: colors.white,
                  Backcolor: Color.fromRGBO(147, 192, 223, 1),
                  width: 255,
                  text: 'Calculate Again',
                  hieght: 55,
                ),
              ),
              SizedBox(
                height: 75,
              )
            ],
          ),
        ),
      ),
      backgroundColor: colors.shade_one,
    );
  }
}
