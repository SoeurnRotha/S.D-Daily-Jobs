import 'package:flutter/material.dart';

import 'info_Samdy.dart';
class Page13 extends StatefulWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  _Page13State createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appbar,
        body: _bulidBody,
      ),
    );
  }
  get _appbar=>AppBar(
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    title: Text("Sele Outdoor"),
  );
  get _bulidBody=>Container(
    alignment: Alignment.center,
    child: ListView(
      children: [
        SizedBox(height: 20,),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("images/jobs/outdoor.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              child: Text("Sele Outdoor",style: TextStyle(fontFamily: "f1",fontSize: 30),),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text("\$250 - \$300",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Full time",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            SizedBox(height: 50,),
            InkWell(
              child: _boxApply,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Samdy_Page()));
              },
            )
          ],
        )
      ],
    ),
  );
  get _boxApply => Container(
    alignment: Alignment.center,
    width: 380,
    height: 80,
    decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10)
    ),
    child: Text("Apply for Job",style: TextStyle(fontSize: 30,fontFamily: "f3",color: Colors.white),),
  );
}
