
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:job/About%20US.dart';
import 'package:job/Page1.dart';
import 'package:job/Page10.dart';
import 'package:job/Page11.dart';
import 'package:job/Page12.dart';
import 'package:job/Page13.dart';
import 'package:job/Page14.dart';
import 'package:job/Page15.dart';
import 'package:job/Page16.dart';
import 'package:job/Page2.dart';
import 'package:job/Page3.dart';
import 'package:job/Page4.dart';
import 'package:job/Page5.dart';
import 'package:job/Page6.dart';
import 'package:job/Page7.dart';
import 'package:job/Page8.dart';
import 'package:job/Page9.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppbar,
        body: _buildBody,
        drawer: _buildDraWer,

      ),
    );
  }
  get _buildAppbar => AppBar(
    backgroundColor: Colors.blue[300],
    title: Text("Home"),
  );
  get _buildBody => Container(
    alignment: Alignment.center,
    child:ListView(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,top: 10),
            child: Text("HI",style: TextStyle(fontSize: 40,fontFamily: "f4"),)
        ),
        Container(
          margin: EdgeInsets.only(left: 10,top: 10),
            child: Text("Find you'r Dream Job",style: TextStyle(fontSize: 40,fontFamily: "f4"),)),
        SizedBox(height: 20,),
        _boxSearch,
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text("Contate Us",style: TextStyle(fontFamily: "f4",fontSize: 30),),
        ),
        SizedBox(height: 20,),
        _SilderAnimation,
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 10),
            child: Text("Recent Job",style: TextStyle(fontSize: 30,fontFamily: "f4"),)
        ),
        SizedBox(height: 20,),
        InkWell(
          child: _Boxjob("Account & Admin","\$300 - \$500",Colors.white,Colors.white,"images/jobs/account.png"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Page1()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Sele showroom","\$180 - \$200",Colors.white,Colors.white,"images/jobs/Sele showroom.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Sele Real Estate","\$250 - \$350",Colors.white,Colors.white,"images/jobs/Sele real estate.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("IT APPLICATION SUPPORT","\$800 - \$1200",Colors.white,Colors.black,"images/jobs/IT support.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Sele Supervisor","\$450 - \$500",Colors.white,Colors.black,"images/jobs/supervisor.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page5()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Senior Backend Developer","\$750 - \$1500",Colors.white,Colors.white,"images/jobs/backend.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page6()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("UX/UI Designer","\$600 - \$900",Colors.white,Colors.red,"images/jobs/ux.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page7()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Product & Marketing Manager","\$2.5K - \$5K",Colors.white,Colors.white,"images/jobs/markting.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page8()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Flutter Developer","\$750 - \$1500",Colors.white,Colors.black,"images/jobs/flutter dev.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page9()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Secretary to CEO","\$500 - \$800",Colors.white,Colors.white,"images/jobs/ceo.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page10()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Retail Sales Manager","\$1000 - \$1500",Colors.white,Colors.white,"images/jobs/Retail Sales Manager.jpeg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page11()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Stock Supervisor","\$450 - \$500",Colors.white,Colors.white,"images/jobs/stock.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page12()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Sele Outdoor","\$250 - \$300",Colors.white,Colors.white,"images/jobs/outdoor.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page13()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Graphic Design","\$350 - \$500",Colors.white,Colors.black ,"images/jobs/des.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page14()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Digital Marketing","\$500 - \$700",Colors.white,Colors.black,"images/jobs/digital.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page15()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
          child: _Boxjob("Interior Design","\$400 - \$500",Colors.white,Colors.white,"images/jobs/Interior Design.jpg"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page16()));
          },
        ),


      ],
    ),
  );
  get _buildDraWer => Drawer(
    child: Column(
      children: [
        _DrawerHeader(),
        ListTile(
          leading: Icon(Icons.home_rounded),
          title: Text("Home"),
          iconColor: Colors.redAccent,
          textColor: Colors.lightBlueAccent,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About Us"),
          iconColor: Colors.purpleAccent,
          textColor: Colors.lightBlueAccent,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>About_Us()));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          iconColor: Colors.redAccent,
          textColor: Colors.lightBlueAccent,
          onTap: (){
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
  _DrawerHeader(){
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        image: DecorationImage(
          image: AssetImage("images/drawer.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
  get _boxSearch => Container(
    alignment: Alignment.center,
    width: 360,
    height: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 30,fontFamily: "f1"),
      decoration: InputDecoration(
        hintText: "Search for Job Title",
        border: InputBorder.none,
        hintStyle: TextStyle(fontSize: 30,fontFamily: "f1"),
        prefixIcon: Icon(Icons.search)
      ),
    ),
  );
  get _SilderAnimation => Container(
    child: CarouselSlider(
      items: [
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/slider/01.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/slider/02.jpg"),
              fit: BoxFit.fill
            )
          ),
        ),
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/slider/03.jpg"),
              fit: BoxFit.cover
            )
          ),
        )
      ],
      options: CarouselOptions(
        height: 250,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        //-> note
        enlargeCenterPage: true
      ),
    ),
  );
  _Boxjob(String title,String salary,Color background,Color Color_text,String img){
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: background,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: Text(title,style: TextStyle(fontSize: 30,fontFamily: "f4",color: Color_text),)
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
              child: Text(salary,style: TextStyle(fontSize: 20,fontFamily: "f4",color: Color_text),)
          ),

        ],
      ),
    );
  }
}
