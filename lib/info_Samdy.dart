
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Samdy_Page extends StatefulWidget {
  const Samdy_Page({Key? key}) : super(key: key);

  @override
  _Samdy_PageState createState() => _Samdy_PageState();
}

class _Samdy_PageState extends State<Samdy_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appbar,
        body: _body,
      ),
    );
  }
  get _appbar =>AppBar(
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    title: Text("Apply for Job now"),
  );
  get _body => Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        SizedBox(height: 20,),
        _samdyImage,
        SizedBox(height: 20,),
        _Contact("069404929 / 089449659"),
        SizedBox(height: 20,),

      ],
    ),
  );
  get _samdyImage => Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/samdy1.jpg"),
            fit: BoxFit.scaleDown
        )
    ),
  );
  _Contact(String phoneNumber){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone,color: Colors.blueAccent,size: 30,),
              Text(phoneNumber,style: TextStyle(fontSize: 30,fontFamily: "f1"),)
            ],
          ),
          SizedBox(height: 20,),
          _email(),
          SizedBox(height: 20,),
          _telegramBox
        ],
      ),
    );
  }
  _email(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.email,size: 25,color: Colors.blueAccent,),
        SizedBox(width: 10,),
        Text("Email:ssamdy@agb-consulting.com",style: TextStyle(fontSize: 25,fontFamily: "f1"),)
      ],
    );
  }
  get _telegramBox => Container(
    alignment: Alignment.center,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 80)
      ),
      child: Text("Telegram",style: TextStyle(fontSize: 30,fontFamily: "f1"),),
      onPressed: () async{
        final url = 'https://t.me/sethy_samdy7?fbclid=IwAR2h6QMPbiezskCMjIH7HJAKG1PWqC3lR15iLB1u5AJnIHDIdktYzzp4HPE';
        if(await canLaunch(url)){
          await launch(
              url,
              forceSafariVC: true,
              //forceWebView: true,
              enableJavaScript: true
          );
        }
      },
    ),
  );
}
