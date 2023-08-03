import 'package:flutter/material.dart';
import 'loginPage.dart';
void main() async {
  runApp(const jitney());
}

class jitney extends StatelessWidget {
  const jitney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quest Jitney',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Router());
  }
}

class Router extends StatefulWidget {
  const Router({Key? key}) : super(key: key);

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
            body: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Card(
                          // shadowColor: Colors.black,
                          elevation: 5,


                          color: Colors.transparent,
                          child: Container(
                            width: 200,
                            height: 70,
                            child: Center(child: Text("Welcome !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.asset("asset/images/quest.png")),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Card(
                      color: Colors.transparent,
                      elevation: 10,
                        child: Center(child: Text("Bus Tracking",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      child: Text('Press Me',style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  loginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),            ],
              ),
            ),
          ),
        ],
        ),
    );
  }
}
