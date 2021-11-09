
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

                    margin: const EdgeInsets.fromLTRB(10,10,40,5),
                    padding: const EdgeInsets.all(2),
                         child: Card(
                           shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                 side: const BorderSide(color: Colors.grey, width: 1),
                           borderRadius: BorderRadius.circular(5),
                           ),
                    child: ListView(

                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children:  <Widget>[
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height:2,fontSize:8,
                            ),
                          ),
                          tileColor: Color.fromRGBO(203, 229, 253, 50),),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.person,color: Colors.blue,),
                            title: Text('Rajat Arora',)
                        , tileColor: Colors.white),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.local_phone,color: Colors.blue,),title: Text('9876543210')
                            ,tileColor: Colors.white),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.location_on,color: Colors.blue,) ,tileColor: Colors.white,
                            title: Text('Sector 4,House no.11,Mp Colony,Bikaner')),
                        const ListTile( visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                            title: Text("Remark:",style: TextStyle(color:Colors.black)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and")
                            ,tileColor: Colors.white) ,
                        ListTile( visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
                            title: const Text(''),
                            tileColor: Colors.white,
                            trailing:ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                              ), //////// HERE
                              onPressed:null,
                              child: const Text('Start',style:TextStyle(fontSize:15,color: Colors.white)),
                            )
                        ),
                      ],
                    ),
                  ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,5,40,5),
                    padding: const EdgeInsets.all(2),
                    child: Card(
                      shadowColor: Colors.grey,

                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(5),
                             ),
                    child: ListView(
                          scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children:  <Widget>[
                        const ListTile( visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                            title: Text('Service ID #123456'),
                          subtitle: Text('Date 14/06/2021, 10.15PM',
                            style: TextStyle(color: Colors.black,height:2,fontSize:8,
                            ),
                          ),
                          tileColor: Color.fromRGBO(203, 229, 253, 50)),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.person,color: Colors.blue,),
                            title: Text('Rajat Arora')
                            ,tileColor: Colors.white),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.local_phone,color: Colors.blue,)
                            ,tileColor: Colors.white,title: Text('9876543210')),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            leading:  Icon(Icons.location_on,color: Colors.blue,)
                            ,tileColor: Colors.white,title: Text('Sector 4,House no.11,Mp Colony,Bikaner'
                            )),
                        const ListTile( visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                            title: Text("Remark:",style: TextStyle(color:Colors.black,)),

                            subtitle: Text("Lorem Ipsum is simply dummy text of the printing "
                                "and typesetting industry. Lorem Ipsum has been the "
                                "industry's standard dummy text ever since the 1500s"
                                "when an unknown printer took a gallery of type and",)
                            ,tileColor: Colors.white),
                        ListTile( visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
                            title: const Text(''),

                            trailing:ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                              ), ///////
                              onPressed:null,
                              child: const Text('Start',style:TextStyle(fontSize:15,color: Colors.white)),
                            )
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
    ),
    );
  }
}