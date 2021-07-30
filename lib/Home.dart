import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(

     child: ConstrainedBox(
       constraints: BoxConstraints(
         maxHeight: _size.height*2.1,
         maxWidth: _size.width,
         minHeight: _size.height,
       ),
       child: Column(
         children: <Widget>[
           Container(
             height: _size.height/3,
             width: _size.width,
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pattern2.png'),
                fit: BoxFit.fill
              ),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.5),
                   blurRadius: 7,
                   offset: Offset(0, 3), // changes position of shadow
                 ),
               ],
             ),
             child: Center(
               child: RichText(
                   text: TextSpan(
                     children: <TextSpan>[
                       TextSpan(
                           text: 'Design is for',
                           style:
                           TextStyle(fontWeight: FontWeight.bold,
                               color: Colors.white,
                             fontSize: _size.width/15,
                               shadows: [
                                 BoxShadow(
                                   color: Colors.black.withOpacity(0.7),
                                   blurRadius: 10,
                                 )
                               ]
                           )
                       ),
                       TextSpan(
                           text: ' People',
                           style: TextStyle(
                               color: Color(0xff00D8FF),
                             fontSize: _size.width/15,
                             fontWeight: FontWeight.bold,
                               shadows: [
                                 BoxShadow(
                                   color: Colors.black.withOpacity(0.9),
                                   blurRadius: 10,
                                 )
                               ]
                           ),
                       ),
                       TextSpan(
                           text: '\n      Not Products ',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: _size.width/15,
                             fontWeight: FontWeight.bold,
                               shadows: [
                                 BoxShadow(
                                   color: Colors.black.withOpacity(0.7),
                                   blurRadius: 10,
                                 )
                               ]
                           ),
                       ),
                     ],
                   ),
               )
             ),
           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             physics: ScrollPhysics(
               parent: BouncingScrollPhysics()
             ),
             child: ConstrainedBox(
               constraints: BoxConstraints(
                 minHeight: _size.height/5,
                 maxWidth: _size.width*1.345,
               ),
               child: Container(
                 child: Row(
                   children: <Widget>[
                     Container(
                       height: _size.height/5,
                       width: _size.width/3,
                       decoration: BoxDecoration(
                         color: Color(0xff1ABAD7)
                       ),
                       child: Center(
                         child: Text('    30 + \nCLIENTS',style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                     ),
                     Container(
                       height: _size.height/5,
                       width: _size.width/3,
                       decoration: BoxDecoration(
                         color: Colors.grey.shade300
                       ),
                       child: Center(
                         child: Text('      50 + \nPROJECTS',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                     ),
                     Container(
                       height: _size.height/5,
                       width: _size.width/3,
                       decoration: BoxDecoration(
                         color: Color(0xff1ABAD7)
                       ),
                       child: Center(
                         child: Text('     75 % \nRETENTION',style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                     ),
                     Container(
                       height: _size.height/5,
                       width: _size.width/3,
                       decoration:  BoxDecoration(
                         color: Colors.grey.shade300
                       ),
                       child: Center(
                         child: Text('    15 + \nTEAMS',style: TextStyle(
                           color: Colors.black,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           Container(

             height: _size.height/2,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Why? How? What?'
                   ,style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.grey.shade800,
                     ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Making design thinking easy for Startups',
                   ),
                 ),
                 Container(
                   height: _size.height/5,
                   width: _size.width/2,
                   decoration: BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.white.withOpacity(0.7),
                         blurRadius: 15,
                       ),
                     ],
                     image: DecorationImage(
                       image: AssetImage('images/image2.png'),
                       fit: BoxFit.fill,
                     ),
                     shape: BoxShape.rectangle
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('We are all about Design!',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 17,
                     color: Colors.grey.shade800
                   ),),
                 ),
               ],
             ),
           ),
          Stack(
            children: <Widget>[
              Container(
                height: _size.height/2.5,
                width: _size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/pattern2.png'),
                        fit: BoxFit.fill
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Why Choose Us ?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            Positioned(
              bottom: 00,
              child: Container(
                height: _size.height/3,
                width: _size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                               children: [
                    WhyUS(size: _size,image: 'images/reliable.png',title: 'RELIABLE',text: 'We believe in long-lasting \nrelationships based on \ntrust and reliability; we \nhave a very professional \nworkflow and follow the\n design sprint framework',),
                    WhyUS(size: _size, image: 'images/empathetic.png',title: 'EMPATHETIC' ,text: 'Throughout life, \n experiences are what stay \nand shape our perception, \nwe strive to give you as \nwell as your customers a \nmemorable and pleasant \nexperience.'),
                    WhyUS(size: _size, image: 'images/agile.png',title: 'ALIGE' ,text: 'We know in today’s fast \nmoving world, time is of \nthe essence. We make sure \nwe do your job as \nefficiently and promptly as \npossible.')
                  ],
                ),
              ),
            )
            ],
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 00),
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('What we do?',
                   style: TextStyle(
                     fontSize: 25,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   ),),
                   Text('UI/UX Design !')
                 ],
               ),
             ),
           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: ConstrainedBox(
               constraints: BoxConstraints(
                 maxHeight: _size.height/2,
                 maxWidth: _size.width*1.5,
               ),
               child: Container(
                 height: _size.height/1.9,
               width: _size.width*1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/whatwedo.png'),
                  fit: BoxFit.fill
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                  )
                ]
              ),
               ),
             ),
           )
         ],
       ),
     )
    );
  }
}

class WhyUS extends StatelessWidget {

WhyUS({@required this.size,@required this.image,@required this.text,@required this.title});
  final Size size;
  final String image;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/3,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: size.width/3,
                height: size.height/4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width/2,
                  height: size.height/4,
                  child: Center(
                    child: Text(
                      text
                       ,style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
