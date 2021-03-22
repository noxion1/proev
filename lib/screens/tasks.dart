import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'home.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dart:async';
import 'package:flutter/services.dart';


void main() => runApp(Tasks());

class Tasks extends StatefulWidget {

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

  final _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {

    int selectedValue = 1;

    return Scaffold (
      backgroundColor: Color(0xFF212121),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF212121),
        toolbarHeight: 80,
        actions: <Widget> [


          Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 750, 0),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.account_circle),
                      iconSize: 50.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 20, 0, 15),
                  child:  Text('Abel van vliet',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 45, 0, 0),
                  child:  Text('bekijk profiel',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 15, 0),
            child: FlatButton(
              child: Container(
                height: 40.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(191, 10, 69, 0.9),
                      Color.fromRGBO(228, 48, 93, 0.9),
                      Color.fromRGBO(238, 115, 33, 0.9),
                    ],
                  ),
                ),
                padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                child: Text('Vraag om hulp', style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Home()),);
              },
            ),
          ),
        ],
      ),
      body: new Stack (
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(80, 40, 0, 0),
            child: Text('Goedemorgen Abel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.8,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(80, 70, 0, 0),
            child: Text('Maak er een mooie dag van!',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.7,
                fontWeight: FontWeight.bold,
                color: Color(0xff888888),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 100, 0, 0),
            child:  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff2B2B2B),
              ),
              width: 515,
              height: 600,
              child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 75, 0, 0),
                    child: new Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff3F3F3F),
                          ),
                          height: 180.0,
                          width: 225.0,
                          ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                           child: IconButton(
                             color: Colors.white,
                             icon: Icon(Icons.airline_seat_flat),
                              iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 65, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(160, 60, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 120, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 135, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.fromLTRB(250, 200, 0, 0),
                          child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff3F3F3F),
                          ),
                          height: 180.0,
                          width: 225.0,
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 200, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 265, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 280, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(410, 260, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff3F3F3F),
                          ),
                          height: 180.0,
                          width: 225.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 65, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(160, 60, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 120, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 135, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff3F3F3F),
                            ),
                            height: 180.0,
                            width: 225.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 200, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 265, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 280, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(160, 260, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 310, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 320, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 335, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 310, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 320, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(300, 335, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff3F3F3F),
                            ),
                            height: 180.0,
                            width: 225.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 0, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 65, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 80, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(410, 60, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 110, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 120, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(300, 135, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.fromLTRB(250, 400, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff3F3F3F),
                            ),
                            height: 180.0,
                            width: 225.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 400, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 465, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(270, 480, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(410, 460, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(275, 510, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(260, 520, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(300, 535, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 400, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff3F3F3F),
                            ),
                            height: 180.0,
                            width: 225.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 400, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.airline_seat_flat),
                            iconSize: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 465, 0, 0),
                          child: Text("Pak de borstel",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 480, 0, 0),
                          child: Text("15 seconden",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(160, 460, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.play_circle_filled),
                            iconSize: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 510, 0, 0),
                          child:Container(
                              height:1.0,
                              width:180.0,
                              color:Color(0xffEEEEEE)
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 520, 0, 0),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.check),
                            iconSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 535, 0, 0),
                          child: Text("Taak voltooid",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )
                          ),
                        ),

                      ],
                    )
                ),

              ),
            ),

          ),
          Padding(
            padding: EdgeInsets.fromLTRB(650, 100, 0, 350),
            child:  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff2B2B2B),
              ),
              width: 240,
              height: 240,
              child: Image.asset (
                "assets/badgegold.png",
                width: 240.0,
                fit: BoxFit.cover,
              ),
            ),

          ),
          Padding(
            padding: EdgeInsets.fromLTRB(660, 300, 0, 0),
            child: Container(
              color: Color(0xff212121),
              height: 175.0,
              width: 240.0,
              child: Text("Met een goede mondhygiëne houdt je je tanden, kiezen en tandvlees gezond. Tandenpoetsen vormt hiervoor de basis.Om je mond gezond te houden, moet je je tandplak verwijderen. Dit wit-gele laagje is moeilijk zichtbaar en ontstaat op én tussen uw tanden en kiezen en op de overgang naar het tandvlees.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(660, 465, 0, 0),
            child: Container(
              color: Color(0xff212121),
              height: 50.0,
              width: 240.0,
              child: Text("Claim deze prijs:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1.8,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(650, 500, 0, 0),
            child:  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff2B2B2B),
              ),
              width: 240,
              height: 100,
            ),
          ),




          Padding(
            padding: EdgeInsets.fromLTRB(665, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 50.0,
              width: 50.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(745, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 50.0,
              width: 50.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(825, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 50.0,
              width: 50.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),


        ],
      ),
    );

  }
}
