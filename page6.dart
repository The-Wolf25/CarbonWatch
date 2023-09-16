import 'package:carbonwatch/Screens/options.dart';
import 'package:carbonwatch/Screens/page3.dart';
import 'package:carbonwatch/Widgets_Reuse/Appbuttons.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:carbonwatch/Widgets_Reuse/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  double res = 0.0;
  TextEditingController _total = TextEditingController();
  TextEditingController _mil = TextEditingController();

  double total = 0.0, milage = 0.0, mintues = 0.0, result = 0.0;

  calc() {
    setState(() {});
    total = double.parse(_total.text);
    milage = double.parse(_mil.text);

    result = total * milage;
  }

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => optionss()));
                    },
                    child: Container(
                      color: colors.shade_one,
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'Assets/images/previous.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  textt(content: 'Electricity', fontsi: 25)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: Container(
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              textt(
                                  content:
                                      'How many kilo-Watt hours of electricity u consumne in a month? ',
                                  fontsi: 18),
                              MyWidget(
                                  con: _total,
                                  backgroundcolor: colors.shade_two,
                                  fontsi: 14,
                                  text: '',
                                  textcolor: Color.fromARGB(255, 88, 87, 87)),
                              textt(
                                  content:
                                      'What is the emission factor in youre state? ',
                                  fontsi: 18),
                              MyWidget(
                                  con: _mil,
                                  backgroundcolor: colors.shade_two,
                                  fontsi: 14,
                                  text: '',
                                  textcolor: Color.fromARGB(255, 88, 87, 87)),
                              SizedBox(
                                height: 25,
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 75,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {});

                  calc();
                },
                child: Appbuttons(
                  Textcolor: colors.white,
                  Backcolor: Color.fromARGB(255, 147, 192, 223),
                  width: 235,
                  text: 'Calculate',
                  hieght: 55,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: textt(content: 'Result  = $result Kg Co2', fontsi: 25),
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  setState(() {});

                  _mil.clear();

                  _total.clear();
                },
                child: Appbuttons(
                  Textcolor: colors.white,
                  Backcolor: colors.shade_three,
                  width: 155,
                  text: 'Clear',
                  hieght: 45,
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
