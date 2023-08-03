import 'package:flutter/material.dart';
import 'package:quest_jitney/firstScreen.dart';
import 'package:quest_jitney/mapView.dart';
import 'package:quest_jitney/trackbus.dart';


class payAmount extends StatefulWidget {
  const payAmount({Key? key}) : super(key: key);

  @override
  State<payAmount> createState() => _payAmountState();
}

class _payAmountState extends State<payAmount> {
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
                              "PayFees",
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
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  elevation: 10,
                  child: Container(
                    width: 400,
                    // height: 400,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment:Alignment.topLeft,
                                  child: CircleAvatar(
                                    child: Icon(Icons.emoji_transportation,size: 20,),
                                    radius: 20,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180),
                                    child: Text("sangavi@gmail.com",),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 145),
                                    child: Row(
                                      children: [
                                        Text("Transport Fee : ",),
                                        Text("Rs.29,500",style: TextStyle(color: Colors.blue),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Enter Card Details To Pay"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              suffix: Image.asset("asset/images/visa.png",width: 70,height: 20,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Card Number',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right:20),
                                child: SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'Card Expiry',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'CVV',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                        ElevatedButton(
                          child: Text('Pay 29,500'),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  firstScreen()));

                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlueAccent,
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400)),
                        ),







                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 130),
                          child: Row(
                            children: [
                              Icon(Icons.lock,size: 15,),
                              Text("Secured By"),
                            ],
                          ),
                        ),
                        Image.asset("asset/images/paytm.png",width: 70,height: 50,),


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
