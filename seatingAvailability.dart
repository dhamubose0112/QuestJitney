import 'package:flutter/material.dart';

import 'busDetailss.dart';


class seatingAvailability extends StatefulWidget {
  const seatingAvailability({Key? key}) : super(key: key);

  @override
  State<seatingAvailability> createState() => _seatingAvailabilityState();
}

class _seatingAvailabilityState extends State<seatingAvailability> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>  busDetailss()));

                                    },
                                    child: Icon(Icons.arrow_back,size: 30,color: Colors.white,))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 70,right: 15 ,top: 20),
                            child: Text(
                              "Bus Seatings",
                              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),



              Card(
                  elevation: 10,
                  child: Column(
                    children: [
                           Image.asset("asset/images/seats.jpg")
                    ],
                  )),








            ],
          ),
        ),
      ),
    );
  }
}
