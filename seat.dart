import 'package:flutter/material.dart';
import 'package:quest_jitney/seatingAvailability.dart';

import 'mapView.dart';
import 'busDetailss.dart';

class seat extends StatefulWidget {
  const seat({Key? key}) : super(key: key);

  @override
  State<seat> createState() => _seatState();
}

class _seatState extends State<seat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Stack(
        children: <Widget>[
          Image.asset(
            "asset/images/busss.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  width: 500,
                  height: 500,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Colors.white70,
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Check Seats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Bus number",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter here',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Route",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter here',
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Check Availability'),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  seatingAvailability()));

                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              )

          ),
        ],
      ),
    );
  }
}