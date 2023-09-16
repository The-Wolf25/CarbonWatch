import 'package:carbonwatch/Screens/EnterName.dart';
import 'package:carbonwatch/Screens/page3.dart';
import 'package:carbonwatch/Widgets_Reuse/Appbuttons.dart';
import 'package:carbonwatch/Widgets_Reuse/Colors.dart';
import 'package:carbonwatch/Widgets_Reuse/appbar.dart';
import 'package:carbonwatch/Widgets_Reuse/text.dart';
import 'package:carbonwatch/Widgets_Reuse/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'options.dart';

class page2 extends StatefulWidget {
  String name;
  page2({Key? key, required this.name}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

List<String> options = ['Yes', 'No', 'Sometimes'];

class _page2State extends State<page2> {
  String currentoptions = options[0];
  TextEditingController _ebill = TextEditingController();
  TextEditingController _gas = TextEditingController();
  TextEditingController _mil = TextEditingController();
  TextEditingController _fly = TextEditingController();

  bool car = false;
  bool bike = false;
  bool bus = false;
  bool cycle = false;
  bool button = false;
  bool button2 = false;
  bool button3 = false;

  bool button4 = false;

  bool button5 = false;
  bool button6 = false;
  bool button7 = false;
  double? a = 0.0, b = 0.0, c = 0.0;
  double? elec = 0.0,
      ele = 0.0,
      km = 0.0,
      kmmili = 0.0,
      gasbill = 0.0,
      gas = 0.0,
      flightbill = 0.0,
      fli = 0.0,
      end = 0.0,
      extra = 0.0,
      result = 0.0,
      ex = 0.0;

  calc() {
    setState(() {});
    ele = double.parse(_ebill.text);
    gas = double.parse(_gas.text);
    fli = double.parse(_fly.text);
    km = double.parse(_mil.text);

    elec = ele! / 83 * 105;
    gasbill = gas! / 83 * 105;
    flightbill = fli! * 1100;
    kmmili = km! * 7 * 52;
    end = elec! + gasbill! + flightbill! + kmmili!;
    result = end! / 2.2;
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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: textt(
                      fontsi: 24,
                      content:
                          'Hello ${widget.name}, Please Answer Below Questions and find out \nyour yearly carbon emission',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 5,
                  color: colors.white,
                  child: Container(
                    height: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: textt(
                            content: 'Click on the mode of transport you use',
                            fontsi: 18,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                      car = true;
                                    },
                                    child: (car)
                                        ? Opacity(
                                            opacity: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  child: Image.asset(
                                                    'Assets/images/car.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          )
                                        : Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  child: Image.asset(
                                                    'Assets/images/car.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {});
                                        bike = true;
                                      },
                                      child: (bike)
                                          ? Opacity(
                                              opacity: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(25.0),
                                                child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                      'Assets/images/bike.png',
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                            )
                                          : Opacity(
                                              opacity: 0.5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(25.0),
                                                child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                      'Assets/images/bike.png',
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                            ))
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                      bus = true;
                                    },
                                    child: (bus)
                                        ? Opacity(
                                            opacity: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  child: Image.asset(
                                                    'Assets/images/bus.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          )
                                        : Opacity(
                                            opacity: 0.5,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  child: Image.asset(
                                                    'Assets/images/bus.png',
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {});
                                        cycle = true;
                                      },
                                      child: (cycle)
                                          ? Opacity(
                                              opacity: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(25.0),
                                                child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                      'Assets/images/cycle.png',
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                            )
                                          : Opacity(
                                              opacity: 0.5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(25.0),
                                                child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    child: Image.asset(
                                                      'Assets/images/cycle.png',
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                            ))
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {});
                                    button = true;
                                  },
                                  child: (button)
                                      ? AnimatedContainer(
                                          duration: Duration(seconds: 5),
                                          child: Appbuttons(
                                            Textcolor: colors.white,
                                            Backcolor: colors.shade_four,
                                            width: 55,
                                            text: ':)',
                                            hieght: 25,
                                          ),
                                        )
                                      : AnimatedContainer(
                                          duration: Duration(seconds: 5),
                                          child: Appbuttons(
                                            Textcolor: colors.white,
                                            Backcolor: colors.shade_four,
                                            width: 145,
                                            text: 'Next',
                                            hieght: 35,
                                          ),
                                        )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textt(
                              content:
                                  'What is your monthly electricity bill? ',
                              fontsi: 18),
                          MyWidget(
                              con: _ebill,
                              backgroundcolor: colors.shade_two,
                              fontsi: 14,
                              text: '',
                              textcolor: Color.fromARGB(255, 88, 87, 87)),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                button6 = true;
                              },
                              child: (button6)
                                  ? AnimatedContainer(
                                      duration: Duration(
                                        seconds: 2,
                                      ),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 55,
                                        text: ':)',
                                        hieght: 25,
                                      ),
                                    )
                                  : AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 145,
                                        text: 'Next',
                                        hieght: 35,
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textt(
                              content: 'What is your monthly gas bill? ',
                              fontsi: 18),
                          MyWidget(
                              con: _gas,
                              backgroundcolor: colors.shade_two,
                              fontsi: 14,
                              text: '',
                              textcolor: Color.fromARGB(255, 88, 87, 87)),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                button3 = true;
                              },
                              child: (button3)
                                  ? AnimatedContainer(
                                      duration: Duration(
                                        seconds: 2,
                                      ),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 55,
                                        text: ':)',
                                        hieght: 25,
                                      ),
                                    )
                                  : AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 145,
                                        text: 'Next',
                                        hieght: 35,
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: textt(
                                content:
                                    'How many mintues per day do u drive your vehicle? ',
                                fontsi: 18),
                          ),
                          MyWidget(
                              con: _mil,
                              backgroundcolor: colors.shade_two,
                              fontsi: 14,
                              text: '',
                              textcolor: Color.fromARGB(255, 88, 87, 87)),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                button2 = true;
                              },
                              child: (button2)
                                  ? AnimatedContainer(
                                      duration: Duration(
                                        seconds: 2,
                                      ),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 55,
                                        text: ':)',
                                        hieght: 25,
                                      ),
                                    )
                                  : AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 145,
                                        text: 'Next',
                                        hieght: 35,
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textt(
                              content: 'How many planes do u catch in a year? ',
                              fontsi: 18),
                          MyWidget(
                              con: _fly,
                              backgroundcolor: colors.shade_two,
                              fontsi: 14,
                              text: '',
                              textcolor: Color.fromARGB(255, 88, 87, 87)),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                button4 = true;
                              },
                              child: (button4)
                                  ? AnimatedContainer(
                                      duration: Duration(
                                        seconds: 2,
                                      ),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 55,
                                        text: ':)',
                                        hieght: 25,
                                      ),
                                    )
                                  : AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 145,
                                        text: 'Next',
                                        hieght: 35,
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          textt(
                              content: 'Do you recycle news paper? ',
                              fontsi: 18),
                          ListTile(
                            title: Text(
                              'Yes',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 117, 116, 116)),
                            ),
                            leading: Radio(
                                activeColor: colors.shade_four,
                                focusColor: colors.shade_four,
                                value: options[0],
                                groupValue: currentoptions,
                                onChanged: (value) {
                                  setState(() {
                                    currentoptions = value.toString();
                                  });
                                }),
                          ),
                          ListTile(
                            title: Text(
                              'No',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 117, 116, 116)),
                            ),
                            leading: Radio(
                                activeColor: colors.shade_four,
                                focusColor: colors.shade_four,
                                value: options[1],
                                groupValue: currentoptions,
                                onChanged: (value) {
                                  setState(() {
                                    currentoptions = value.toString();
                                  });
                                }),
                          ),
                          ListTile(
                            title: Text(
                              'Sometimes',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 117, 116, 116)),
                            ),
                            leading: Radio(
                                activeColor: colors.shade_four,
                                focusColor: colors.shade_four,
                                value: options[2],
                                groupValue: currentoptions,
                                onChanged: (value) {
                                  setState(() {
                                    currentoptions = value.toString();
                                  });
                                }),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {});
                                button5 = true;
                              },
                              child: (button5)
                                  ? AnimatedContainer(
                                      duration: Duration(
                                        seconds: 2,
                                      ),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 55,
                                        text: ':)',
                                        hieght: 25,
                                      ),
                                    )
                                  : AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Appbuttons(
                                        Textcolor: colors.white,
                                        Backcolor: colors.shade_four,
                                        width: 145,
                                        text: 'Next',
                                        hieght: 35,
                                      ),
                                    )),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page3(
                                end: result.toString(),
                              )));
                  calc();
                },
                child: Appbuttons(
                  Textcolor: colors.white,
                  Backcolor: Color.fromRGBO(147, 192, 223, 1),
                  width: 235,
                  text: 'Calculate',
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
    );
  }
}
