import 'package:flutter/material.dart';

import 'busDetailss.dart';


class mapView extends StatefulWidget {
  const mapView({Key? key}) : super(key: key);

  @override
  State<mapView> createState() => _mapViewState();
}

class _mapViewState extends State<mapView> {
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
                            padding: const EdgeInsets.only( left: 80,right: 15 ,top: 20),
                            child: Text(
                              "Map View",
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
                      Flexible(
                        flex: 0,
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
                        width: 500,
                          child: Image.asset("asset/images/map.png")),
                    ],
                  )),








            ],
          ),
        ),
      ),
    );
  }
}
