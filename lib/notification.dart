import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kocherpage/homescreen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Notifications(),
  ));
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Notifications> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[200],
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue[200],
          leading: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Homescreen()));
              },
              child:  Icon(Icons.arrow_back_ios,color: Colors.black87,size: 40),
            ),
          ),
          centerTitle: true,
          title: new Center(child: Text("Notification",style:TextStyle(color:Colors.black87),textAlign:TextAlign.center),widthFactor: 40,),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:5),
              child:  PopupMenuButton(
                icon: Image.asset("assets/3dots.png",color: Colors.black87,alignment: Alignment.centerRight),
                color: Colors.blueAccent,
                iconSize: 40,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      height: 30,
                      enabled: true,
                      value: '',
                      child: SizedBox(
                          width: 100,
                          child: Text('Mark All Read',style: TextStyle(color: Colors.white))
                      ),

                    ),
                  ];
                },
                offset: const Offset(-35,65),
                onSelected: (dynamic value){
                },
              ),
            ),
          ]
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10 ,10),
        child: ListView(
          children: <Widget>[

            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),

              child:ListTile(

                title:  Text('New Order',
                  style: TextStyle(fontSize: 20),
                ),

                subtitle:Text('Picked up the order from restaurant \n 12 June 2021,11:20 AM' ,
                    style: TextStyle(fontSize: 10)),

              ),


            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),

              child:ListTile(

                title:  Text('New Order',
                  style: TextStyle(fontSize: 20),
                ),

                subtitle:Text('Picked up the order from restaurant \n 12 June 2021,11:20 AM' ,
                    style: TextStyle(fontSize: 10)),

              ),



            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),

              child:ListTile(

                title:  Text('New Order',
                  style: TextStyle(fontSize: 20),
                ),

                subtitle:Text('Picked up the order from restaurant \n 12 June 2021,11:20 AM' ,
                    style: TextStyle(fontSize: 10)),

              ),



            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),

              child:ListTile(

                title:  Text('New Order',
                  style: TextStyle(fontSize: 20),
                ),

                subtitle:Text('Picked up the order from restaurant \n 12 June 2021,11:20 AM' ,
                    style: TextStyle(fontSize: 10)),

              ),



            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),

              child:ListTile(

                title:  Text('New Order',
                  style: TextStyle(fontSize: 20),
                ),

                subtitle:Text('Picked up the order from restaurant \n 12 June 2021,11:20 AM' ,
                    style: TextStyle(fontSize: 10)),

              ),
            ),

          ],
        ),
      ),
    );
  }


}

