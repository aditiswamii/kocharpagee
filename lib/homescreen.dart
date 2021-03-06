

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kocherpage/history.dart';
import 'package:kocherpage/new.dart';
import 'package:kocherpage/active.dart';
import 'package:kocherpage/notification.dart';
import 'package:kocherpage/profile.dart';

void main() {
  runApp(const Homescreen());
}

class Homescreen extends StatelessWidget {
  const Homescreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(160, 209, 249, 50),
            leadingWidth: 314,
            toolbarHeight: 80,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                     padding: EdgeInsets.only(right:5.0),
                         alignment: Alignment.centerRight,
                  child: GestureDetector(
                       onTap: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Notifications()));
                       },
                   child: Image.asset('assets/notification.png',width:40,color: Color.fromRGBO(60,137,209,50),height:40),
                    ),
                 ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                alignment: Alignment.topRight,
                child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Profile()));
                        },
                 child: Image.asset('assets/place_user.png',width:40,height:40)
                ),
              )
            ]
        ),



            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("New",style:TextStyle(color:Colors.black)),

                ),

                Tab(
                  child: Text("Active",style:TextStyle(color:Colors.black)),
                ),
                Tab(
                  child: Text("History",style:TextStyle(color:Colors.black)),
                )
              ],
            ),
          ),

          body: const TabBarView(

            children: [

               New(),
               Active(),
              History()
            ],
          ),
        ),
      ),
    );
  }
}