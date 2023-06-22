import 'package:flutter/material.dart';

class AllCars extends StatefulWidget {
  const AllCars({super.key});

  @override
  State<AllCars> createState() => _AllCarsState();
}

class _AllCarsState extends State<AllCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Nexon EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ("Images/TataNexon.png"),
                  height: 140,
                  width: 175,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Xpres-T EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Tataxpress TEV.png'),
                  height: 140,
                  width: 195,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "MG Z5 EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/MG Z5 EV.png'),
                  height: 150,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Hyundai Kona Electic",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/hyundai-KONA.webp'),
                  height: 140,
                  width: 165,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Mahindra e2o Plus",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/mahindra-E2o.png'),
                  height: 140,
                  width: 180,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Mahindra e-Verito",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/mahindra_verito_ev.webp'),
                  height: 140,
                  width: 155,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "EQC",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/mercedes-car-eqc.png'),
                  height: 140,
                  width: 165,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "I-Pace",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/I-Pace.webp'),
                  height: 140,
                  width: 165,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "2-Whealer",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/2 Wealer.webp'),
                  height: 120,
                  width: 190,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Mini Cooper SE",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/MiniCooper.webp'),
                  height: 140,
                  width: 165,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tesla Model Y",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Tesla.png'),
                  height: 140,
                  width: 160,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Audi-e-tron",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/audi-e-tron-2019.png'),
                  height: 145,
                  width: 190,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Tigor Ziptron EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Tata Tigor Ziptron EV.png'),
                  height: 140,
                  width: 175,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Volvo XC40 Recharge",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/volvo-xc40-recharge-2021.png'),
                  height: 140,
                  width: 180,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "BYD E6",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/e6-Exterior-Blue.webp'),
                  height: 140,
                  width: 164,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Kia EV6",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/kiaev6.png'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "BMW i4",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/bmw-concept-i4-modelcard.png'),
                  height: 140,
                  width: 210,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Nexon EV Max",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/TataNexonEVmax.jpg'),
                  height: 140,
                  width: 180,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "MG ZS EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/MG ZS EV.png'),
                  height: 140,
                  width: 175,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Marcedes EQS",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Marcedes EQS.png'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "3 Whealer",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/3 Whealer.png'),
                  height: 140,
                  width: 180,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Hyundai IONIQ 5",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Hyundai IONIQ 5.png'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Tiago EV",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/tiago-ev-inner.png'),
                  height: 140,
                  width: 175,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Tata Tiago EV Long Range",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/tiago-ev-inner.png'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Mahindra XUV400 EC",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Mahindra XUV400 EC.webp'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Mahindra XUV400 EL",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Mahindra XUV400 EC.webp'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "Citroen e-C3",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Citroen e-C3.png'),
                  height: 140,
                  width: 200,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "BYD Atto 3",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("CCS-2"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Chademo.png",
                                      color: Color.fromARGB(255, 9, 110, 39),
                                      height: 22,
                                    ),
                                    Text(
                                      "CHAdeMO",
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/CCS2.png",
                                      height: 28,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("GBT        "),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/BYD Atto 3.webp'),
                  height: 140,
                  width: 170,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "JBM ECOLIFE EV 261 ",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "Images/CCS2.png",
                                  height: 28,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("CCS-2"),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/CCS2.png",
                                  height: 28,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Type-2"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Volvo-Bus-PNG-Photo.png'),
                  height: 140,
                  width: 190,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "MG Comet",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "Images/Type2.png",
                                      height: 23,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Type-2",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/Chademo.png",
                                  color: Color.fromARGB(255, 9, 110, 39),
                                  height: 22,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  "CHAdeMO",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Comet EV.png'),
                  height: 140,
                  width: 180,
                ),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 10, 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 0),
                    child: Column(
                      children: [
                        Text(
                          "JBM SKYLIFE BUS",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "Images/CCS2.png",
                                  height: 28,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("CCS-2"),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "Images/CCS2.png",
                                  height: 28,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Type-2"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  ('Images/Volvo-Bus-PNG-Photo.png'),
                  height: 140,
                  width: 190,
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
