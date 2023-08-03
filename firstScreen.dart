import 'package:flutter/material.dart';
import 'package:quest_jitney/payment.dart';
import 'package:quest_jitney/seat.dart';

import 'trackbus.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
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
              padding: const EdgeInsets.only(top: 100),
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
                          child: Text("Hi! Sangavi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  trackbusPage()));

                              },
                              child: Text("Track Your Bus"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  payments()));


                              },
                              child: Text("Payment"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  seat()));



                              },
                              child: Text("Seat Availability"),
                            ),
                          ),
                        )




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