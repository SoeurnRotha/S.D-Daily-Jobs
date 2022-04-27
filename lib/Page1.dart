import 'package:flutter/material.dart';
import 'package:job/info_Samdy.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:_appbar,
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
    title: Text("Account & Admin"),
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
                      image: AssetImage("images/jobs/account.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              child: Text("Account & Admin",style: TextStyle(fontFamily: "f1",fontSize: 30),),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text("\$300 - \$500",style: TextStyle(fontSize: 20),),
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
