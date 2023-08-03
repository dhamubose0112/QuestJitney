import 'package:flutter/material.dart';
import 'package:quest_jitney/firstScreen.dart';
import 'package:quest_jitney/mapView.dart';
import 'package:quest_jitney/trackbus.dart';


class busDetailss extends StatefulWidget {
  const busDetailss({Key? key}) : super(key: key);

  @override
  State<busDetailss> createState() => _busDetailssState();
}

class _busDetailssState extends State<busDetailss> {
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
                height: 250,
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
                                          MaterialPageRoute(builder: (context) =>  firstScreen()));

                                    },
                                    child: Icon(Icons.arrow_back,size: 30,color: Colors.white,))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 70,right: 15 ),
                            child: Text(
                              "Bus Details",
                              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: TextField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none),
                                        hintText: 'Search',
                                        hintStyle:
                                        TextStyle(color: Colors.grey, fontSize: 18),
                                        prefixIcon: Container(
                                          padding: EdgeInsets.all(15),
                                          child: Icon(Icons.search),
                                          width: 18,
                                        )),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Icon(Icons.sort),
                                    width: 25),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text("Your Bus is in Chromepet,",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300),),
              ),
              Text("It Will Arrive in 30 Mins",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300),),


              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  mapView()));
                },
                child: Card(
                    elevation: 10,
                    child: Container(
                        width: 350,
                        height: 250,
                        child: Image.asset("asset/images/track.jpeg",width: 200,height: 100,))),
              ),








            ],
          ),
        ),
      ),
    );
  }
}
