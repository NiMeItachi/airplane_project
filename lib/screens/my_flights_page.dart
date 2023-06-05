import 'package:airplane_project/components/colors/my_colors.dart';
import 'package:flutter/material.dart';

class MyFlightsPage extends StatelessWidget {
  const MyFlightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              // Top bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/ic_menu.png"),
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/icons/ic_image.png")),
                  ],
                ),
              ),
              // Text
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 41, left: 25),
                  child: Text(
                    "My Flights",
                    style: TextStyle(
                      color: MyColors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontFamily: "Outfit",
                    ),
                  ),
                ),
              ),
              // Column
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: MyColors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Ticket № 1
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(
                            '/view',
                            arguments: {
                              'city1': "MCO",
                              'city1Name': "Orlando",
                              'city2': "ATL",
                              'city2Name': "Atlanta",
                              'date': 'May 11, 8:45 am',
                              'time': '1h 43m'
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 80),
                          width: 300,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //MCO
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "MCO",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Orlando",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Date",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "May 11, 8:45am",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //HOUR
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child:
                                          Image.asset("assets/icons/ic_go.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "1h 43m",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //ATL
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "ATL",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Atlanta",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Flight number",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "F12234",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "View ticket >",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 2,
                        color: MyColors.yellow,
                      ),
                      // Ticket № 2
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(
                            '/view',
                            arguments: {
                              'city1': "ATL",
                              'city1Name': "Atlanta",
                              'city2': "LAX ",
                              'city2Name': "Los Angeles",
                              'date': 'June 12, 12:20 pm',
                              'time': '4h 29m'
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 80),
                          width: 300,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //MCO
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "ATL",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Atlanta",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Date",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "June 12, 12:20pm",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //HOUR
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child:
                                          Image.asset("assets/icons/ic_go.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "4h 29m",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //ATL
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "LAX",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Los Angeles",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Flight number",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "F12234",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 2,
                        color: MyColors.yellow,
                      ),
                      // Ticket № 2
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(
                            '/view',
                            arguments: {
                              'city1': "ATL",
                              'city1Name': "Atlanta",
                              'city2': "LAX ",
                              'city2Name': "Los Angeles",
                              'date': 'June 12, 12:20 pm',
                              'time': '4h 29m'
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 80),
                          width: 300,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //MCO
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "ATL",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Atlanta",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Date",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "June 12, 12:20pm",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //HOUR
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child:
                                          Image.asset("assets/icons/ic_go.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "4h 29m",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //ATL
                              const Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Text(
                                          "LAX",
                                          style: TextStyle(
                                            color: MyColors.yellow,
                                            fontSize: 32,
                                            fontFamily: "Overpass",
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Los Angeles",
                                          style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Flight number",
                                          style: TextStyle(
                                            color: MyColors.grey,
                                            fontSize: 14,
                                            fontFamily: "Overpass",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "F12234",
                                        style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 14,
                                          fontFamily: "Overpass",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 100),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 2,
                        color: MyColors.yellow,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColors.yellow,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.add,
          color: MyColors.green,
          size: 30,
        ),
      ),
    );
  }
}
