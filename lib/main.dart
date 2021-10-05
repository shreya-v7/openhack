import 'package:flutter/material.dart';
import 'package:openhack/drawer.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Kochi ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                color: Colors.white,
              ),
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Image.asset(
                    'assets/lfby.png',
                    height: 300.0,
                    width: 140.0,
                  )),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding:
                            EdgeInsets.only(left: 15.0, top: 15.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0))),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Welcome to",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                              Text('Save Kochi',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 0.0),
                    height: 200.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        _foodCard("Medical Supplies","assets/hosp.png",1),
                        SizedBox(width: 10.0),
                        _foodCard("Food Supplies","assets/food.png",2),
                        SizedBox(width: 10.0),
                        _foodCard("Rescue Services","assets/rescue.png",3),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 15.0),


          Stack(
            children: <Widget>[
              Image.asset('assets/rnow.gif',width: MediaQuery.of(context).size.width,),
              Positioned(top: 150.0,left: 40.0,
                  child: Text("22°C",style: TextStyle(color: Colors.white,fontSize: 33.0,fontWeight: FontWeight.bold),)),
              Positioned(top: 180.0,left: 40.0,
                  child: Text("Heavy Rain",style: TextStyle(color: Colors.white,fontSize: 33.0),)),
            ],
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Other Services',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Colors.black,
                child: ListTile(


                  leading: Image.asset('assets/tent.png',),
                  title: Text("Refugee Camps Near you",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Colors.black,
                child: ListTile(


                  leading: Image.asset('assets/people.png',),
                  title: Text("Report missing",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Colors.black,
                child: ListTile(


                  leading: Image.asset('assets/contribute.png',),
                  title: Text("Contribute",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: Colors.black,
                child: ListTile(


                  leading: Image.asset('assets/volunteer.png',),
                  title: Text("Volunteer",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),


        ],
      ),
    );


  }

  Widget _foodCard(String title,String url,int nof) {
    return InkWell(
      onTap: (){/*

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => recipePage(
              nof: nof,
              collname: "dishes",
            )));*/
      },
      child: Container(
        height: 300.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black,
        ),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image:
                  DecorationImage(image: AssetImage('$url'))),
              height: 125.0,
              width: 100.0,
            ),
            SizedBox(width: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '$title',
                    style: TextStyle(color: Colors.white),

                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 75.0,
                  color: Colors.orange,
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
