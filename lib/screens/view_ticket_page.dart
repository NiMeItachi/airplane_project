import 'package:airplane_project/components/colors/my_colors.dart';
import 'package:flutter/material.dart';

import '../components/texts/my_text.dart';

class ViewTicketPage extends StatelessWidget {
  const ViewTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      backgroundColor: MyColors.green,
      body: Center(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: MyColors.white,
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
            // Ticket Data
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 70),
              width: 300,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //MCO
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              data["city1"]!,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              data["city1Name"]!,
                              style: const TextStyle(
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

                  //HOUR
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.asset("assets/icons/ic_go.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            data["time"]!,
                            style: const TextStyle(
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
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              data["city2"]!,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              data["city2Name"]!,
                              style: const TextStyle(
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
            // Ticket
            Stack(
              children: [
                // Ticket background
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                //Map
                Container(
                    margin: const EdgeInsets.only(left: 40, top: 20),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/img_map.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 20),
                          child: Image.asset("assets/images/img_delta.png"),
                        ),
                      ],
                    )),
                //Title
                Padding(
                  padding: const EdgeInsets.only(left: 260, top: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/ticket",
                          arguments: {"date": data["date"]!});
                    },
                    icon: Image.asset("assets/icons/ic_expand.png"),
                  ),
                ),
                //Text: number
                const Padding(
                  padding: EdgeInsets.only(top: 120, left: 20),
                  child: Text(
                    "Ref. 12344",
                    style: TextStyle(
                      color: MyColors.green,
                      fontSize: 22,
                      fontFamily: "Outfit",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150, left: 15),
                  width: 280,
                  height: 1,
                  color: MyColors.green,
                ),
                //Text: data
                Container(
                  margin: const EdgeInsets.only(top: 180, left: 20),
                  width: 280,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Flight Date: Zone: Flight Number
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Flight Date
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const MyText(
                                  text: "Flight date",
                                  color: MyColors.blueGrey,
                                ),
                                MyText(
                                  text: data["date"]!,
                                  color: MyColors.green,
                                ),
                              ],
                            ),
                            // Zone
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MyText(
                                  text: "Zone",
                                  color: MyColors.blueGrey,
                                ),
                                MyText(
                                  text: "A",
                                  color: MyColors.green,
                                ),
                              ],
                            ),
                            // Flight Number
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyText(
                                  text: "Flight Number",
                                  color: MyColors.blueGrey,
                                ),
                                MyText(
                                  text: "F12234",
                                  color: MyColors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Boarding Time: Seat: Class
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Boarding Time
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "Boarding time",
                                  color: MyColors.blueGrey,
                                ),
                                MyText(
                                  text: "8:00 am EST",
                                  color: MyColors.green,
                                ),
                              ],
                            ),
                            // Seat
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  MyText(
                                    text: "Seat",
                                    color: MyColors.blueGrey,
                                  ),
                                  MyText(
                                    text: "34A",
                                    color: MyColors.green,
                                  ),
                                ],
                              ),
                            ),
                            // Class
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyText(
                                  text: "Class",
                                  color: MyColors.blueGrey,
                                ),
                                MyText(
                                  text: "Business",
                                  color: MyColors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //green
                Container(
                  margin: const EdgeInsets.only(top: 340),
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: MyColors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                //line
                Padding(
                  padding: const EdgeInsets.only(top: 350, left: 10),
                  child: Image.asset("assets/images/img_line.png"),
                ),
                //green
                Container(
                  margin: const EdgeInsets.only(top: 340, left: 295),
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: MyColors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                //QR
                Container(
                  margin: const EdgeInsets.only(top: 370, left: 20),
                  width: 270,
                  height: 120,
                  child: Column(
                    children: [
                      const Text(
                        "Boarding pass",
                        style: TextStyle(
                          color: MyColors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Outfit",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset("assets/images/img_qr.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
