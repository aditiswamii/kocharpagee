import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const New());
}

class New extends StatelessWidget {
  const New({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
     child: Column(

mainAxisSize: MainAxisSize.min,
                children: [
                  Container(

                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    constraints:  const BoxConstraints.expand(height: 300.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width:1,
                      ),
                    ),
                    height: 250,
                    width: 340,
                    child: ListView(

                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: const <Widget>[
                        ListTile(title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height:2,fontSize:8,
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
                              child: Text('Completed',style:TextStyle(fontSize:10,color: Colors.lightBlueAccent)),
                            )
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    constraints:  const BoxConstraints.expand(height: 300.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width:1,
                      ),
                    ),
                    height: 250,
                    width: 340,
                    child: ListView(
                          scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: const <Widget>[
                        ListTile(title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height:2,fontSize:8,
                            ),
                          ),
                          tileColor: Colors.lightBlueAccent,),
                        ListTile(leading:  Icon(Icons.person),
                            title: Text('Rajat Arora',)),
                        ListTile(leading:  Icon(Icons.local_phone),title: Text('9876543210')),
                        ListTile(leading:  Icon(Icons.location_on),title: Text('Sector 4,House no.11,Mp Colony,Bikaner',
                            )),
                        ListTile(title: Text("Remark:",style: TextStyle(color:Colors.black)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and",)),
                        ListTile(title: Text(''),
                            trailing:TextButton(
                              onPressed:null,
                              child: Text('Completed',style:TextStyle(fontSize:10,color: Colors.lightBlueAccent)),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
    ),
    );
  }
}