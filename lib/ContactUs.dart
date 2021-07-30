import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('A V A I N',
          style: TextStyle(
              color: Colors.black,
              fontSize:25
          ),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
           Icons.arrow_back,
            color: Colors.black,
          )
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width,
            minHeight: size.height,
            maxHeight: size.height*1.3
          ),
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/pattern3.png'),
                    fit: BoxFit.cover,
            )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: size.height/3,
                      width: size.width/2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/meeting.png'),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    Container(
                      height: size.height/4,
                      width: size.width/2,
                      decoration: BoxDecoration(
                          color: Color(0xff1ABAD7)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Get your free \nconsultancy!',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Lets get down to discussing your \nproject',
                              style: TextStyle(
                                  fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: Text(
                    'Email us at',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'info@aviandesign.in',
                    style: TextStyle(
                      fontSize: 18,
                      color:Color(0xff1ABAD7),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text(
                    'Call us at',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    '+1 812 558 3209\n+91 9354906525',
                    style: TextStyle(
                      fontSize: 18,
                      color:Color(0xff1ABAD7),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,bottom:10),
                  child: Text(
                    'Visit us',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Banglore',
                    style: TextStyle(
                      fontSize: 18,
                      color:Color(0xff1ABAD7),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
