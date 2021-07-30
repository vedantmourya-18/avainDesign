import 'package:flutter/material.dart';
import 'package:vedant_app/ContactUs.dart';
import 'package:vedant_app/OurServices.dart';

class aboutUs extends StatefulWidget {
  @override
  _aboutUsState createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    Size _size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: _size.height*1.5,
          maxWidth: _size.width
        ),
        child: Container(
          height: _size.height,
         width: _size.width,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('images/pattern3.png'),
             fit: BoxFit.fill,
           )
         ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text('Who are we ?',style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,

                  ),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: _size.height/2,
                      maxWidth: _size.width*2.5,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: _size.width/4,),
                        whoarewe(size: _size,text: 'COLLABORATORS',image: 'images/collabe.png',),
                        SizedBox(width: _size.width/4,),
                        whoarewe(size: _size,text: 'DESIGNERS',image: 'images/entrepreneur.png',),
                        SizedBox(width: _size.width/4,),
                        whoarewe(size: _size,text:'THINKERS',image:'images/Thinkers.png',)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left:50,right:50),
                  child: Text('We are a team of designers, entrepreneurs and creators all coming together to form a creative community with a common vision of growth and innovation.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class whoarewe extends StatelessWidget {

  whoarewe({@required this.text,@required this.image,@required this.size});

  final Size size;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: size.height/2.5,
      width: size.width/2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: size.height/3.5,
               width: size.width/2.5,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(image),
                   fit: BoxFit.fill,
                 )
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text(text,style: TextStyle(
                 color: Colors.black,
                 fontSize: 15,
                 fontWeight: FontWeight.bold
               ),),
             )
           ],
         ),
       ),
    );
  }
}
