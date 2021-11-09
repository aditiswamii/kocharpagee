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
                    margin: const EdgeInsets.fromLTRB(5,5,5,5),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10,170),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                         child: ListView(

                      children:  <Widget>[
                       const ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                         title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height:3,fontSize:10,
                            ),
                          ),
                          tileColor:Color.fromRGBO(203, 229, 253, 50),),
                       const ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                           leading:  Icon(Icons.person,color: Colors.blue),
                            title: Text('Rajat Arora'),
                           tileColor: Colors.white),
                       const  ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                           leading:  Icon(Icons.local_phone,color: Colors.blue),
                           title: Text('9876543210'),
                           tileColor: Colors.white
                       ),
                       const ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                           leading:  Icon(Icons.location_on,color: Colors.blue),
                           title: Text('Sector 4,House no.11,Mp Colony,Bikaner')
                       ,tileColor: Colors.white),
                        const ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            title: Text("Remark:",style: TextStyle(color:Colors.black)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and")
                        ,tileColor: Colors.white) ,
                        ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -1),
                          title: const Text(''),
                            tileColor: Colors.white,
                            trailing:ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                              ), ////
                              onPressed:() {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      padding: const EdgeInsets.fromLTRB(10,60, 10, 80),
                                      margin: const EdgeInsets.all(5),
                                      alignment: Alignment.center,
                                      child: AlertDialog(
                                        insetPadding: const EdgeInsets.all(10),

                                        title: const Text(
                                            'Please enter OTP to complete service',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15, color: Colors
                                                .black)),
                                        content: Container(
                                          height: 110,
                                          margin: const EdgeInsets.fromLTRB(10, 0, 10,0),
                                          child: Column(
                                            children: [
                                              OtpTextField(
                                                  numberOfFields: 4,
                                                  fieldWidth: 40,
                                                  margin: const EdgeInsets.only(
                                                      right: 5.0),
                                                  borderColor: Colors.black,
                                                  //set to true to show as box or false to show as dash
                                                  showFieldAsBox: false,
                                                  //runs when a code is typed in
                                                  onCodeChanged: (String code) {
                                                    //handle validation or checks here
                                                  }, // end onSubmit
                                                ),
                                           Container(
                                             margin: EdgeInsets.fromLTRB(10,0, 10, 0),
                                             padding:EdgeInsets.fromLTRB(10,10, 10, 0) ,
                                             child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(0,0,15,0),
                                                  child: ElevatedButton(

                                                    style: ElevatedButton.styleFrom(
                                                      primary: Colors.red,
                                                      onPrimary: Colors.white,

                                                      alignment: Alignment.center,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(25.0)),
                                                      fixedSize: const Size(80,40),
                                                      //////// HERE
                                                    ),
                                                    onPressed: () {
                                                    },
                                                    child: const Text('Close',style: TextStyle(fontSize: 12),),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                  child: ElevatedButton(

                                                    style: ElevatedButton.styleFrom(
                                                      primary: Colors.green,
                                                      onPrimary: Colors.white,
                                                      alignment: Alignment.center,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(25.0)),
                                                      fixedSize: const Size(80,40),
                                                      //////// HERE
                                                    ),
                                                    onPressed: () {
                                                    },
                                                    child: const Text('Submit',style: TextStyle(fontSize: 12),),
                                                  ),
                                                ),
                                               ]
                                      ),
                                           )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Text('Completed',
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.white)),
                           ),
                        ),
                      ],
                    ),
                    ),
    );
  }
}