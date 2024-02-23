// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:p4_app_quizz/widgets/custom_text.dart';
import 'package:p4_app_quizz/widgets/page_quizz.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: new CustomText(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 10.0,
              child: new Container(
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                child: new Image.asset("assets/cover.jpg",
                fit: BoxFit.cover,),
              ),
            ),

            new ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
                  return new PageQuizz();
                }));
              },
              child: new CustomText("Commencer la quizz", factor: 1.0),

            )
          ],
        ),
      ),
    );
  }
}
