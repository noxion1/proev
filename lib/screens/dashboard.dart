import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'home.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'tasks.dart';

import 'dart:async';
import 'package:flutter/services.dart';

class TutorialOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
      RaisedButton(
         child: Container(
            color: Color(0xff2B2B2B),
            height: 695.0,
            width: 2048.0,
            child: Image.asset (
              "assets/robin2.png",
              width: 225.0,
              fit: BoxFit.cover,
            ),
         ),
        onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}



void main() => runApp(Dashboard());

class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(TutorialOverlay());
  bool isChecked = false; }

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
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: new Stack(
                      children: <Widget>[
                        Container(
                            color: Color(0xff2B2B2B),
                          height: 200.0,
                          width: 225.0,
                         child: Image.asset (
                          "assets/pepe.png",
                          width: 225.0,
                          fit: BoxFit.cover,
                        ),),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 205, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 230, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                               fontSize: 12,
                               color: Color(0xff888888),
    )

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
                          child: Container(
                            color: Color(0xff2B2B2B),
                            height: 200.0,
                            width: 225.0,
                            child: Image.asset (
                              "assets/doggo.jpg",
                              width: 225.0,
                              fit: BoxFit.cover,
                            ),),),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 205, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 230, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                                fontSize: 12,
                                color: Color(0xff888888),
                              )

                          ),
                        ),
                           Padding(
                             padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
                               child: Container(
                                color: Color(0xff2B2B2B),
                                 height: 200.0,
                               width: 225.0,
                                   child: Image.asset (
                            "assets/skaffa.png",
                            width: 225.0,
                            fit: BoxFit.cover,
                          ),),),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 453, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 480, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                                fontSize: 12,
                                color: Color(0xff888888),
                              )

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(250, 250, 0, 0),
                          child: Container(
                            color: Color(0xff2B2B2B),
                            height: 200.0,
                            width: 225.0,
                            child: Image.asset (
                              "assets/yakuza.png",
                              width: 225.0,
                              fit: BoxFit.cover,
                            ),),),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 453, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 480, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                                fontSize: 12,
                                color: Color(0xff888888),
                              )

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 500, 0, 0),
                          child: Container(
                            color: Color(0xff2B2B2B),
                            height: 200.0,
                            width: 225.0,
                            child: Image.asset (
                              "assets/hmm.jpg",
                              width: 225.0,
                              fit: BoxFit.cover,
                            ),),),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 703, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(0, 730, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                                fontSize: 12,
                                color: Color(0xff888888),
                              )

                          ),
                        ),
                        FlatButton(
                         child: Padding(
                           padding: EdgeInsets.fromLTRB(250, 500, 0, 0),
                           child: Container(
                             color: Color(0xff2B2B2B),
                             height: 200.0,
                             width: 225.0,
                             child: Image.asset (
                              "assets/shadow.png",
                              width: 225.0,
                              fit: BoxFit.cover,
                            ),),),
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>Tasks()),);
                          },
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 703, 0, 0),
                          child: Text(
                              "Douchen",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.fromLTRB(250, 730, 0, 0),
                          child: Text(
                              "Over 6 minuten",
                              style: TextStyle(
                                letterSpacing: 1.4,
                                fontSize: 12,
                                color: Color(0xff888888),
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
            padding: EdgeInsets.fromLTRB(550, 0, 0, 350),
            child: StreamBuilder(
             stream: Stream.periodic(const Duration(seconds: 1)),
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                  DateFormat('hh:mm').format(DateTime.now()),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                        fontSize: 80,
                        color: Colors.white,
                      )
                ),
              );
            },
          ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(650, 180, 0, 0),
            child:Container(
              height:1.0,
              width:275.0,
              color:Color(0xff444444)
            ),
          ),
            Padding(
              padding: EdgeInsets.fromLTRB(650, 400, 0, 0),
                  child:  Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
               color: Color(0xff2B2B2B),
                   ),
                      width: 280,
                    height: 250,
                  ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(665, 200, 0, 0),
            child: Container(
              color: Colors.white,
              height: 175.0,
              width: 250.0,
              child: Image.asset (
                "assets/calendar.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),




          Padding(
            padding: EdgeInsets.fromLTRB(670, 425, 0, 0),
            child: Container(
              color: Colors.white,
              height: 60.0,
              width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(765, 425, 0, 0),
            child: Container(
            color: Colors.white,
            height: 60.0,
            width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(855, 425, 0, 0),
            child: Container(
              color: Colors.white,
              height: 60.0,
              width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.fromLTRB(670, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 60.0,
              width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(765, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 60.0,
              width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(855, 525, 0, 0),
            child: Container(
              color: Colors.white,
              height: 60.0,
              width: 60.0,
              child: Image.asset (
                "assets/badgegold.png",
                width: 225.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(855, 0, 0, 0),
              child: RaisedButton(
                onPressed: () => _showOverlay(context),
                child: Text('Show Overlay'),
            ),
          ),



        ],
      ),
    );

  }
}
