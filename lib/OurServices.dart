import 'package:flutter/material.dart';
import 'package:vedant_app/ContactUs.dart';

class services extends StatefulWidget {
  @override
  _servicesState createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pattern3.png'),
            fit: BoxFit.fill,
          )
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints:BoxConstraints(
              maxHeight: size.height/1.5,
              maxWidth: size.width*3,
            ) ,
            child: Row(
              children: <Widget>[
                SizedBox(width: size.width/6,),
                Services(size: size, title:'CONCEPT', time:'2 Weeks (25 Screens)', Content:'- Define Goals \n- User Personas\n- User Interviews\n- Use Case Scenario\n- Brainstorming\n- Impact vs Feasibility Analysis\n- Wireframing\n- High Fidelity Screens\n- Responsive Design\n- Prototype\n\n\nEffort Est: 100 - 120 Hours \n\nPrice: 20 USD/Hour', price:'\$1,949+', image:'images/illustration1.png'),
                SizedBox(width: size.width/6,),
                Services(size: size, title: 'STARTUP', time:'4 Weeks (100 Screens)', Content:'Everything in the Concept package +\n\n- User Testing\n- Journey Mapping\n- Identifying Pain Points\n- Brainstorming\n- Impact vs Feasibility Analysis\n- Wireframing\n- High Fidelity Screens\n- Responsive Design\n- Prototype\n\n\nEffort Est: 225 - 300 Hours\n\nPrice: 20 USD/Hour', price:'\$4,499+', image:'images/illustration2.png'),
                SizedBox(width: size.width/6,),
                Services(size: size, title: 'BUILD TO SCALE', time:'Variable', Content:'Get a series of sprints tailored \nto design your product for scale!\n\n- Define\n- Empathise\n- Ideate\n- Prototype\n- User Testing\n- Re-iterate\n- Final Design\nLet us set up your design team!\n\n\nEffort Est: 500+ Hours\nPrice: 15 USD/Hour', price:'\$&7,500+', image:'images/illustration3.png'),
                SizedBox(width: size.width/6,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
Services({@required this.size,@required this.title,@required this.time,@required this.Content,@required this.price,@required this.image});
  final Size size;
  final String title;
  final String time;
  final String Content;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      height: size.height/1.5,
      width: size.width/1.5,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width/1.5,
            maxHeight: size.height*1.2
          ),
          child:Stack(
            children: <Widget>[
              Positioned(
                top: 00,
                child: Container(
                  height: size.height/3.5,
                  width: size.width/1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(image),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                  left: 00,
                  child: Container(
                height: size.height*0.95,
                width: size.width/2,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                        child: Text(
                          time,
                          style: TextStyle(
                            color:Color(0xff00D8FF),
                            fontSize: 15,
                          ),
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(Content,
                          style: TextStyle(fontSize: 15,
                          color: Colors.grey.shade800),),
                        ),
                        Padding(padding: EdgeInsets.all(10),
                        child: Text('From:',style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue.shade800,
                        ),),),
                        Padding(padding: EdgeInsets.all(10),
                          child: Text(price,style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff00D8FF),
                          ),),),
                        Container(

                          decoration: BoxDecoration(
                            color: Color(0xff00D8FF),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Book Now',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),),
                            ))
                      ],
                    ),
              ),
              )
            ],
          )
        ),
      ),
    );
  }
}
