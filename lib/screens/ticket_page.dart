import 'package:flutter/material.dart';

import '../components/colors/my_colors.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      backgroundColor: MyColors.green,
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Ticket
              Container(
                height: MediaQuery.of(context).size.width * 0.9,
                width: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    // Header
                    Expanded(
                      flex: 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //TITLE
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Image.asset(
                                    "assets/icons/ic_exit.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 140),
                                  child: Image.asset(
                                    "assets/images/img_delta.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Data
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/img_map.png",
                                  scale: 0.6,
                                ),
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 300),
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
                                      width: 400,
                                      height: 1,
                                      color: MyColors.green,
                                    ),
                                    //Text: data
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      width: 400,
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Flight Date",
                                                      style: TextStyle(
                                                        color: MyColors.blueGrey,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      data["date"]!,
                                                      style: const TextStyle(
                                                        color: MyColors.green,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Zone",
                                                      style: TextStyle(
                                                        color: MyColors.blueGrey,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "A",
                                                      style: TextStyle(
                                                        color: MyColors.green,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Flight Number",
                                                      style: TextStyle(
                                                        color: MyColors.blueGrey,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "F12234",
                                                      style: TextStyle(
                                                        color: MyColors.green,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Boarding time",
                                                      style: TextStyle(
                                                        color: MyColors.blueGrey,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "8:00 am EST",
                                                      style: TextStyle(
                                                        color: MyColors.green,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: 40),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        "Seat",
                                                        style: TextStyle(
                                                          color: MyColors.blueGrey,
                                                          fontFamily: "Overpass",
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        "34A",
                                                        style: TextStyle(
                                                          color: MyColors.green,
                                                          fontFamily: "Overpass",
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Class",
                                                      style: TextStyle(
                                                        color: MyColors.blueGrey,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Business",
                                                      style: TextStyle(
                                                        color: MyColors.green,
                                                        fontFamily: "Overpass",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // QR
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          // LINE
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                    color: MyColors.green,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset("assets/images/img_line_vert.png"),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                      color: MyColors.green,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // QR
                          const SizedBox(width: 40),
                          Image.asset("assets/images/img_qr_vertic.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
