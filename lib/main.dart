import 'package:flutter/material.dart';
import 'package:job/Intro.dart';
void main(){
  runApp(const JobApp());
}
class JobApp extends StatelessWidget {
  const JobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
