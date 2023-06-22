import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../../../styles/textstyle.dart';
import 'Stationlots.dart';

//mport '../../../styles/textstyle.dart';
class DropDownButtonPage extends StatefulWidget {
  DropDownButtonPage({Key? key}) : super(key: key);

  @override
  State<DropDownButtonPage> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
  var voltage = [
    110,
    20,
    50,
  ];
  var charger = [
    'CHAdeMo',
    'CCS',
    'TYPE-2',
    'GB/T',
    'CCS2',
  ];
  var price = [
    100,
    200,
    110,
    150,
    50,
  ];
  var uid = '18';
  var voltagevalue;
  var chargerValue;
  var priceValue;
  Future<void> SendData() async {
    var data = {
      'connector_type': chargerValue,
      'power_capacity': voltagevalue.toString(),
      'price': priceValue.toString(),
      'station_id': '18',
    };
    var response =
        await post(Uri.parse('${con.url}/insertSlot.php'), body: data);
    print(response.body);
    if (jsonDecode(response.body)['result'] == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('slot Added')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => StationSlotPage()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('slot denied')));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => StationSlotPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Add Slots')),
        toolbarHeight: 70,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Voltage'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff0000ff),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        underline: Container(),
                        isExpanded: true,
                        hint: Text(' Voltage'),
                        value: voltagevalue,
                        items: voltage
                            .map((e) => DropdownMenuItem(
                                  child: Text('$e kw'),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            voltagevalue = val;
                          });
                        }),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Charger-type'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff0000ff),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        underline: Container(),
                        isExpanded: true,
                        hint: Text(' Charger type'),
                        value: chargerValue,
                        items: charger
                            .map((e) => DropdownMenuItem(
                                  child: Text('$e'),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            chargerValue = val;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff0000ff),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                      hint: Text(' Price'),
                      underline: Container(),
                      isExpanded: true,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      value: priceValue,
                      items: price
                          .map((e) => DropdownMenuItem(
                                child: Text('₹ $e /hour'),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          priceValue = val;
                        });
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text('Disable slot'),
          //     SizedBox(width: 20,),
          //     Switch(value: switchselect,
          //         onChanged: (bool? value){
          //       setState(() {
          //         switchselect=!switchselect;
          //       });
          //         })
          //   ],
          // ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5A5AD2),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    print(voltagevalue);
                    print(chargerValue);
                    print(priceValue);
                    //  print(uid);
                    setState(() {
                      SendData();
                    });
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
