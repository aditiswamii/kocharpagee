import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 220,
        backgroundColor: Color.fromRGBO(160, 209, 249, 50),
        title: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 200,150),
          child: const Align(
            alignment: Alignment.topLeft,

            child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 40),
          ),
        ),
          actions: <Widget>[
           Padding(
             padding: const EdgeInsets.fromLTRB(80, 55, 120, 55),

             child: Flexible(
              child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/place_user.png',height: 150,width:150,),
              ),
        ),
           ),
         ],

      ),

        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),

            child: ListView(
                children: <Widget>[

                  Container(

                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(10,5, 10,5),
                      child:Text(
                        'Name',
                        style: TextStyle(fontSize:20),
                      )),
                  Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10,5,10,5),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Rajat Arora',
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.singleLineFormatter
                      ],),
                  ),
                  Container(

                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(10,5, 10,5),
                      child:Text(
                        'Mobile Number',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10,5, 10,5),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '9876543210',
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],),
                  ),
                  Container(

                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(10,5, 10,5),
                      child:Text(
                        'Vehicle no.',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10,5, 10,5),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Vehicle no.',
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.singleLineFormatter
                      ],),
                  ),
                  Container(

                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(10,5, 10,5),
                      child:Text(
                        'Area Covered',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10,5, 10,5),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Area',
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],),
                  ),
                  Row(

                    children:[
                      Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                          child:Text('Privacy Policy',
                              style: TextStyle(fontSize: 10, decoration: TextDecoration.underline, ))
                      ),
                      Flexible(
                        child:Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.fromLTRB(120,5, 0, 0),
                            child:Image.asset('assets/neo.png',height: 75)
                        ),
                      ),
                    ],
                  )
                ]
            )
        )
    );
  }
}