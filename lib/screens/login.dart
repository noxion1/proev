import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'home.dart';

import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  final _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {

    return Scaffold (
      backgroundColor: Color(0xFF212121),

      body: new Stack (
        children: <Widget>[
          Opacity(
            opacity:0.4,
            child: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("assets/shadow.png"), fit: BoxFit.cover,),
              ),

            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(450, 270, 0, 0),
              child: Text(
                  'Welkom',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
              )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(350, 325, 0, 0),
            child: SizedBox(
              height: 40.0,
              width: 350.0,
              child: TextField (
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: ' E-mail',
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  )
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(350, 375, 0, 0),
            child: SizedBox(
              height: 40.0,
              width: 350.0,
              child: TextField (
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: ' Wachtwoord',
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(350, 440, 0, 0),
            child: SizedBox(
              height: 40.0,
              width: 350.0,
              child: Text (' Wachtwoord onthouden?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(300, 180, 0, 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isChecked = !isChecked;
                });
              },
              child: Center(
                child: CustomSwitchButton(
                  backgroundColor: Color(0xFF424242),
                  unCheckedColor: Colors.white,
                  animationDuration: Duration(milliseconds: 300),
                  checkedColor: Colors.white,
                  checked: isChecked,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(335, 475, 0, 0),
            child: FlatButton(
              child: Container(
                height: 40.0,
                width: 350.0,
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
                padding: EdgeInsets.fromLTRB(150, 10, 0, 0),
                child: Text('Login', style: TextStyle(
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
    );

  }
}
