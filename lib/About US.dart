import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  _About_UsState createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppbar,
        body: _buildBody,
      ),
    );
  }
  get _buildAppbar=>AppBar(
    backgroundColor: Colors.blue[300],
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    title: Text("About US"),
  );
  get _buildBody => Container(
    alignment: Alignment.center,
    child: SingleChildScrollView(
      child: Column(
        children: [
          _image(),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(right: 250),
            child: Text("Desctiption",style: TextStyle(fontFamily: "f1",fontSize: 40),),
          ),
          SizedBox(height: 10,),
          _boxDescription(),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(right: 220),
            child: Text("Developer by",style: TextStyle(fontFamily: "f1",fontSize: 40),),
          ),
          SizedBox(height: 20,),
          _developer("images/developer/chea.jpg","Saro SereyVichea","+855 xxx xxx"),
          SizedBox(height: 20,),
          _developer("images/developer/rotha.jpg","      Soeurn Rotha","+855 xxx xxx"),
        ],
      ),
    ),
  );
  _image(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/logo.jpg"),
            )
          ),
        )
      ],
    );
  }
  _boxDescription(){
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
          child: Text("កម្មវិធីនេះបង្កើតឡើងសម្រាប់ជូយសម្រួលដល់អ្នកទាំងអស់គ្នា ដែលចង់រកការងារដែលខ្លួនពេញចិត្ដ។",style: TextStyle(fontFamily: "khmer1",fontSize: 20),)),
    );
  }
  _developer(String img,String name,String phoneNumber){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            //margin: EdgeInsets.only(right: 70),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 15,),
          Container(
            child: Column(
              children: [
                Text(name,style: TextStyle(fontSize: 30,fontFamily: "f1"),),
                SizedBox(height: 20,),
                Text(phoneNumber,style: TextStyle(fontSize: 20,fontFamily: "f1"),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
