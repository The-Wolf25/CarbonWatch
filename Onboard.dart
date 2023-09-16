import 'package:carbonwatch/Screens/EnterName.dart';
import 'package:carbonwatch/Widgets_Reuse/Appbuttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboard extends StatefulWidget {
  const onboard({Key? key}) : super(key: key);

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  final con = PageController();
  void dispose() {
    con.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: con,
              children: [
                Container(
                  color: colors.shade_one,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: Lottie.asset('Assets/Animation/onboard1.json',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 110),
                          child: Text(
                            'The environment is in your hands.\nSo is the responsibility !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                wordSpacing: 3,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: colors.shade_one,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: Lottie.asset('Assets/Animation/earth.json',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 110),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Manage Youre carbon emission in every\n step you make, \nGive your earth a hug!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  wordSpacing: 3,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: colors.shade_one,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: Lottie.asset(
                              'Assets/Animation/onboard1.1.json',
                              fit: BoxFit.cover),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Entername()));
                          },
                          child: Appbuttons(
                            Textcolor: colors.white,
                            Backcolor: Color.fromARGB(255, 138, 195, 132),
                            width: 230,
                            text: 'Get Started',
                            hieght: 55,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: con,
                    count: 3,
                    effect: SlideEffect(
                        spacing: 18,
                        radius: 4,
                        dotWidth: 10,
                        dotHeight: 8,
                        activeDotColor: Color.fromARGB(255, 133, 200, 127)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
