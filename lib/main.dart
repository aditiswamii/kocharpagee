import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kocherpage/otppage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListView(
              children: <Widget>[

                FittedBox(
                 child:Image.asset(
                   'assets/loginnew.jpg', height: 200.0
                 ),
                 fit: BoxFit.fill,
                 ),
                Container(

                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 30),
                    )),
                Container(

                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child:const Text(
                      'Enter your mobile number to proceed',
                      style: TextStyle(fontSize:18),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile number',
                    ),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],),
                ),
            Container(
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 80),
                child:ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    elevation: 3,
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    fixedSize: Size(40,40),
                    //////// HERE
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const MyOtp()));
                  },
                  child: Text('login'),
                )
            ,)
              ],
            )));
  }
}
