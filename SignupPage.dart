import 'package:flutter/material.dart';
import 'package:quest_jitney/verification.dart';


class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
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
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 500,
                child: SingleChildScrollView(
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
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Full Name",
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
                                "Phone Number",
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
                                labelText: 'Enter Phn no',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Bus Route",
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
                                "Bus No",
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
                                labelText: 'Enter Bus No',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Address",
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
                                labelText: 'address line1',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'address line2',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'address line3',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,top: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Boarding Point",
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
                                labelText: 'Enter Bpoint',
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              child: Text('Continue'),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  verifyPage()));
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
              ),
            )

        ),
      ],
      ),
    );
  }
}