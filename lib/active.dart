import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() {
  runApp(const Active());
}

class Active extends StatelessWidget {
  const Active({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width:1,
                      ),

                    ),
                    child: ListView(

                      children:  <Widget>[
                       const ListTile(title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height: 5,fontSize:15,
                            ),
                          ),
                          tileColor: Colors.lightBlueAccent,),
                       const ListTile(leading:  Icon(Icons.person),
                            title: Text('Rajat Arora')),
                       const  ListTile(leading:  Icon(Icons.local_phone),title: Text('9876543210')),
                       const ListTile(leading:  Icon(Icons.location_on),title: Text('Sector 4,House no.11,Mp Colony,Bikaner')),
                        const ListTile(title: Text("Remark:",style: TextStyle(color:Colors.black)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and")) ,
                        ListTile(title: const Text(''),
                            trailing:TextButton(
                              onPressed:() {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text(
                                          'Please enter OTP to complete service',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors
                                              .black)),
                                      content: Column(
                                        children: [
                                          OtpTextField(
                                              numberOfFields: 4,
                                              fieldWidth: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 5.0),
                                              borderColor: Colors.black,
                                              //set to true to show as box or false to show as dash
                                              showFieldAsBox: true,
                                              //runs when a code is typed in
                                              onCodeChanged: (String code) {
                                                //handle validation or checks here
                                              }, // end onSubmit
                                            ),
                                      Row(
                                        children: [
                                        Container(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text('close'),
                                        ),
                                      ),
                                      Container(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text('Submit'),
                                        ),
                                      ),
                                         ]
                                    )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Text('Completed',
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.lightBlueAccent)),
                           ),
                        ),
                      ],
                    ),

    );
  }
}