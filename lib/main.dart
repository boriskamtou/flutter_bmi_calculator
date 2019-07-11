import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(HomePage());

enum selectedGender { male, female }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color inactiveColor = Colors.transparent;
  Color activeColorOne = Color(0xFF7b63c6);
  Color activeColorTwo = Color(0xFF5237b5);

  Color colorInit = Colors.transparent;

  bool isSelected = false;
  selectedGender gender;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF7b63c6), Color(0xFF5237b5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 0.5],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'BMI Calculator',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '23.2 ',
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '/',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Normal',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Are you a?',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gender = selectedGender.male;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gender == selectedGender.male
                                    ? [activeColorOne, activeColorTwo]
                                    : [Colors.transparent, Colors.transparent],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.6, 0.4],
                              ),
                              border: Border.all(
                                width: 1.3,
                                color: Color(0xFFDEDEDE),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            height: 50.0,
                            width: 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.male,
                                  size: 35.0,
                                  color: Color(0xFFDFDEDF),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: gender == selectedGender.male
                                        ? Colors.white
                                        : Colors.grey.shade500,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gender = selectedGender.female;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gender == selectedGender.female
                                    ? [activeColorOne, activeColorTwo]
                                    : [Colors.transparent, Colors.transparent],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.6, 0.4],
                              ),
                              border: Border.all(
                                width: 1.3,
                                color: Color(0xFFDEDEDE),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            height: 50.0,
                            width: 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.female,
                                  size: 35.0,
                                  color: Color(0xFFDFDEDF),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: gender == selectedGender.female
                                        ? Colors.white
                                        : Colors.grey.shade500,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
