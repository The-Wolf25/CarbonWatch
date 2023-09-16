import 'package:carbonwatch/Screens/EnterName.dart';
import 'package:carbonwatch/Screens/options.dart';
import 'package:carbonwatch/Screens/page3.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/appbar.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  double res = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.shade_one,
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => page3(
                                    end: res.toString(),
                                  )));
                    },
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
                          border: Border.all(
                            color: Color.fromARGB(255, 141, 138, 138),
                            width: 4,
                          ),
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
                height: 50,
              ),
              SizedBox(
                height: 35,
              ),
              textt(content: 'Donate to Reduce', fontsi: 25),
              SizedBox(
                height: 25,
              ),
              Container(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35)),
                                width: 250,
                                height: 400,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image.asset(
                                    'Assets/images/trashfix.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35)),
                          width: 250,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              'Assets/images/donatee.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35)),
                          width: 250,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              'Assets/images/donateee.png',
                              fit: BoxFit.fill,
                            ),
                          )),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35)),
                          width: 250,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              'Assets/images/donateeee.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        width: 35,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35)),
                          width: 250,
                          height: 400,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              'Assets/images/donate.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              textt(content: 'Reducing Carbon Footprint Steps', fontsi: 25),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Text(
                  '1. Use public transportation, carpool, or bike instead of driving alone.\n'
                  '2. Reduce, reuse, and recycle to minimize waste.\n'
                  '3. Save energy by turning off lights and appliances when not in use.\n'
                  '4. Switch to energy-efficient LED bulbs.\n'
                  '5. Use reusable bags and containers instead of disposable ones.\n'
                  '6. Plant trees and support reforestation efforts.\n'
                  '7. Conserve water by fixing leaks and using low-flow fixtures.\n'
                  '8. Reduce meat consumption and opt for plant-based foods.\n'
                  '9. Support renewable energy sources like solar and wind power.\n'
                  '10. Educate yourself and others about climate change and its impact.\n'
                  '11. Advocate for policies and practices that reduce carbon emissions.\n'
                  '12. Consider carbon offset programs for your carbon-intensive activities.\n'
                  'Remember, every small effort counts in the fight against climate change!',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: colors.shade_four,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      wordSpacing: 2,
                      height: 2),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
