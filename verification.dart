import 'package:flutter/material.dart';
import 'package:quest_jitney/firstScreen.dart';

import 'SignupPage.dart';


class verifyPage extends StatefulWidget {
  const verifyPage({Key? key}) : super(key: key);

  @override
  State<verifyPage> createState() => _verifyPageState();
}

class _verifyPageState extends State<verifyPage> {
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
            body: Column(
              children: [
                Image.asset("asset/images/almost.png",width: 400,height: 200,),

                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    width: 500,
                    height: 400,
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
                                child: Text("Verify Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0,top: 10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Enter Password",
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
                                  "Confirm Password",
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
                                child: Text('SignUp'),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>  firstScreen()));
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
              ],
            )

        ),
      ],
      ),
    );
  }
}