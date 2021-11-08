import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: History(),
  ));
}

class History extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<History> {

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width:1,
                      ),

                    ),
                    child: ListView(

                      children: const <Widget>[
                        ListTile(title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height: 5,fontSize:15,
                            ),
                          ),
                          tileColor: Colors.lightBlueAccent,),
                        ListTile(leading:  Icon(Icons.person),
                            title: Text('Rajat Arora')),
                        ListTile(leading:  Icon(Icons.local_phone),title: Text('9876543210')),
                        ListTile(leading:  Icon(Icons.location_on),title: Text('Sector 4,House no.11,Mp Colony,Bikaner')),
                        ListTile(title: Text("Remark:",style: TextStyle(color:Colors.black)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and")) ,
                        ListTile(title: Text(''),
                            trailing:TextButton(
                              onPressed:null,
                              child: Text('Completed',style:TextStyle(fontSize:15,color: Colors.lightBlueAccent)),
                            )
                        ),
                      ],
                    ),

      );

  }
}