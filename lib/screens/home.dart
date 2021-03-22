import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dashboard.dart';

import 'dart:async';
import 'package:flutter/services.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

    class _HomeState extends State<Home> {

  @override

  Widget build(BuildContext context) {

    return Scaffold (
      backgroundColor: Color(0xFF303030),

        body: new Stack (
          children: <Widget>[
               Padding(
                   padding: EdgeInsets.fromLTRB(265, 125, 0, 0),
                   child: Container(
                      height: 500.0,
                     width: 500.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                     color: Color(0xFF212121),
                    ),
                      child: Container(
              ),
             ),
            ),
            Padding (
              padding: EdgeInsets.fromLTRB(265, 105, 0, 0),
              child: Container(
                height: 300,
                  width: 500,
                  child: CarouselSlider(
                    options: CarouselOptions(),
                    items: imgList.map((item) => Container(
                      child: Center(
                          child: Image.network(item, fit: BoxFit.fill, width: 420)
                      ),
                    )).toList(),
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(430, 425, 0, 0),
              child: Container (
                child: Text(
                  "Stap voor stap",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(310, 465, 0, 0),
              child: Container (
                width: 400,
                child: Text(
                  "Aliquam erat volutpat. Vestibulum facilisis, "
                      "ante ac fermentum ornare, ipsum dui convallis ex.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF616161),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(420, 540, 0, 0),
              child: FlatButton(
                child: Container(
                  height: 35.0,
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
                  padding: EdgeInsets.fromLTRB(30, 6, 0, 0),
                  child: Text('Begin direct', style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Dashboard()),);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(800, 0, 0, 0),
              child: SizedBox(
                height: 175.0,
                width: 350.0,
                child: new FlatButton(
                  child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Overslaan',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.arrow_forward),
                          iconSize: 30.0,
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ],
        ),
    );

  }
}


final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.fill, width: 1.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();