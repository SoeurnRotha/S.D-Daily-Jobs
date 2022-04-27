import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job/Home.dart';
class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_buildBody ,
    );
  }
  get _buildBody => Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/back.jpg"),
        fit: BoxFit.cover
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/logo.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(height: 20,),
        CircularProgressIndicator(
          color: Colors.lightBlueAccent
        )
      ],
    ),
  );
}
