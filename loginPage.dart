import 'package:flutter/material.dart';

import 'SignupPage.dart';


class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset("asset/images/hi.png",width: 300,height: 100,),
              ),

              Container(
                color: Colors.transparent,
                width: 500,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
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
                                child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0,top: 8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Phone number",
                                  style: TextStyle(
                                    color: Colors.black,
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
                                  border: OutlineInputBorder(

                                  ),
                                  labelText: 'Enter here',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0,top: 8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Password",
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
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                ),
                                child: Text(
                                  'retrieve password',
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                child: Text('Submit'),
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.lightBlueAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  signUpPage()));
                              },
                              style: TextButton.styleFrom(
                              ),
                              child: Text(
                                'SignUp',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )

        ),
      ]
      ),
    );
  }
}