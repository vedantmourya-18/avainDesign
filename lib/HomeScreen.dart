import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'Aboutus.dart';
import 'OurServices.dart';
import 'package:vedant_app/Home.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  int _currentindex = 1;
  List<Widget> _widgetChoice = <Widget>[
    aboutUs(),
     home(),
    services(),
  ];
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('A V A I N',
        style: TextStyle(
          color: Colors.black,
          fontSize:25
        ),),
        leading: Image(
          image: AssetImage('images/avian.png'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _currentindex,
        selectedItemColor: Color(0xff1ABAD7),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info_outline,),
            title: Text('AboutUs'),backgroundColor:Colors.grey,),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),
              title: Text('Home'),backgroundColor:Colors.grey ),
          BottomNavigationBarItem(icon: Icon(Icons.work,),
              title: Text('Services'),backgroundColor:Colors.grey)
        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: Stack(

        children: <Widget>[
          _widgetChoice.elementAt(_currentindex),
          Positioned(
            top: _size.height/7,
            left: 00,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return ContactUs();
                }));
              },
              child: Container(
                height: _size.height/7,
                width: _size.width/12,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(topRight:Radius.circular(10),
                  // bottomRight: Radius.circular(10)),
                  color: Color(0xff1ABAD7),
                  border: Border(
                    top: BorderSide(
                      color: Colors.white
                    ),
                    bottom: BorderSide(
                      color:Colors.white,
                    ),
                    right: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid
                    )
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10
                    )
                  ]
                ),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                      child: Text('Contact',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: _size.height/35
                      ),)),
                ),
              ),
            ),
          ),

        ],
      )
      );
  }
}
