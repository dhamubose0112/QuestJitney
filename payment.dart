import 'package:flutter/material.dart';
import 'package:quest_jitney/firstScreen.dart';
import 'package:quest_jitney/mapView.dart';
import 'package:quest_jitney/payAmount.dart';
import 'package:quest_jitney/trackbus.dart';


class payments extends StatefulWidget {
  const payments({Key? key}) : super(key: key);

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
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
                              "Payments",
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
              
              Card(
                elevation: 10,
                child: Container(
                  width: 400,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50,left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                            Text("Sangavi.M",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30),),
                          ],
                        ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text("Student ID: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                          Text("Sit20it066",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text("Bus Route: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                          Text("Bharathi Nagar",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text("Amount to Pay: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                          Text("Rs.29,500",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30),),
                        ],
                      ),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: ElevatedButton(
                            child: Text('Proceed to Pay'),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>  payAmount()));

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












            ],
          ),
        ),
      ),
    );
  }
}
