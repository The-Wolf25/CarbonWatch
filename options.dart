import 'package:carbonwatch/Screens/page3.dart';
import 'package:carbonwatch/Screens/page4.dart';
import 'package:carbonwatch/Screens/page5.dart';
import 'package:carbonwatch/Screens/page6.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';

class optionss extends StatefulWidget {
  optionss({
    Key? key,
  }) : super(key: key);

  @override
  State<optionss> createState() => _optionss();
}

class _optionss extends State<optionss> {
  double res = 0.0;
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => page3(
                            end: res.toString(),
                          )));
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => page3(
                                      end: res.toString(),
                                    )));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
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
                          MaterialPageRoute(builder: (context) => page5()));
                    },
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
                        'Tracker',
                        style: TextStyle(color: colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              textt(
                  content: 'Calculate Carbon Emission from daily activities',
                  fontsi: 25),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page5()));
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: colors.shade_four, width: 3),
                      borderRadius: BorderRadius.circular(35),
                      color: colors.white),
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      Lottie.asset('Assets/Animation/drive.json',
                          fit: BoxFit.cover),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: textt(content: 'Driving', fontsi: 25),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page6()));
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: colors.shade_four, width: 3),
                      borderRadius: BorderRadius.circular(35),
                      color: colors.white),
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 35),
                        child: Lottie.asset('Assets/Animation/unknown2.json',
                            fit: BoxFit.cover),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: textt(content: 'Electricity', fontsi: 25),
                          ))
                    ],
                  ),
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
