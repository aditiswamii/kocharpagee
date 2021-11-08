
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:kocherpage/homescreen.dart';
import  'package:timer_button/timer_button.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyOtp(),
  ));
}
class MyOtp extends StatefulWidget{
  const MyOtp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}


class _State extends State<MyOtp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 250,
          backgroundColor: const Color.fromRGBO(160, 209, 249, 50),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),

              child: Flexible(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/otp_banner.png',height: 200,width: 230),
                ),
              ),
            ),
          ],

            ),

        body: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ListView(
              children: <Widget>[


                Container(

                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Please Enter the OTP',
                      style: TextStyle(fontSize:20),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5,10),
                 child: OtpTextField(
                    numberOfFields: 4,
                    fieldWidth: 60,
                    margin: const EdgeInsets.only(right: 20.0),
                    borderColor: Colors.black,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content: Text('OTP entered is $verificationCode'),
                            );
                          }
                      );
                    }, // end onSubmit
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child:TimerButton(
                      label: "Resend OTP",
                      buttonType: ButtonType.TextButton,
                      resetTimerOnPressed: true,
                      timeOutInSeconds: 30,
                      onPressed: () {
                        dispose();
                      },
                      disabledColor: Colors.white,
                      color: Colors.white,
                      disabledTextStyle: new TextStyle(fontSize: 10.0,color: Colors.black,decoration: TextDecoration.underline,),
                      activeTextStyle: new TextStyle(fontSize: 10.0, color: Colors.black,decoration: TextDecoration.underline,),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(150, 10, 150, 80),
                  child:ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      elevation: 3,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      fixedSize: const Size(30,20),
                      //////// HERE
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Homescreen()));
                    },
                    child: const Text('Submit'),
                  )
                  ,)
              ],
            )));
  }
}
