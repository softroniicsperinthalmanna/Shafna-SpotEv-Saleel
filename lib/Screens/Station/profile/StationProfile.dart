import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot_ev/Screens/Station/profile/stationLocationEditPage.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../LOCATION.dart';
import '../../styles/textstyle.dart';
import '../home/MyStation/Slots/Stationlots.dart';
import 'EditProfileDetailsPage.dart';
import 'changePasswordPage.dart';

class StationProfilePage extends StatefulWidget {
  StationProfilePage({Key? key}) : super(key: key);

  @override
  State<StationProfilePage> createState() => _StationProfilePageState();
}


class _StationProfilePageState extends State<StationProfilePage> {
  Future<String?> getLoginId() async {
    SharedPreferences pref =await SharedPreferences.getInstance();
    String? LoginID=pref.getString('LoginID');
    return LoginID;
  }
  var uid;
  var flag = 0;
  Future<void> refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  Future<dynamic> RecieveData() async {
    uid=await getLoginId();
    print('uid: $uid');
    var data = {'login_id': uid.toString()};
    var response =
    await post(Uri.parse('${con.url}/StationReadProfile.php'), body: data);
    if(uid!=null)
      print('uid: $uid');
    else{
      print('uid value not found');
    }
    //print(response.body);
    print(response.body);
    if (jsonDecode(response.body)[0]['result'] == 'Success') {
      flag = 1;
      print(response.body);
    } else {
      flag = 0;
      print(response.body);
    }
    return jsonDecode(response.body);
  }
  var locContent = 'Click button below to get the location';
  var myLatitude;
  var myLongitude;
  var myplace;
  var locText = 'No Data';

  Future<void> SendLocation() async {
    uid=await getLoginId();
    var data = {
      'place': myplace,
      'location': locContent,
      'lattitude': myLatitude.toString(),
      'longitude': myLongitude.toString(),
      'login_id': uid,
    };
    var response =
        await post(Uri.parse('${con.url}/UpdateLocation.php'), body: data);
    if(uid!=null)
      print('uid: $uid');
    else{
      print('uid value not found');
    }
    print(response.body);
    if (jsonDecode(response.body)['result'] == 'Success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Location updated')));
      Navigator.pop(context);
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) => StationProfilePage()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Location Failed')));
      Navigator.pop(context);
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) => StationProfilePage()));
    }
return jsonDecode(response.body);
  }
  @override
  void initstate(){
    super.initState();
    setState(() {
      getLoginId();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xff438BCE),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff01376B),
                                  Color(0xff438BCE)
                                ])),
                        child: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                  child: TextButton(
                onPressed: () {},
                child: Text('Add/Change profile picture'),
              )),
              SizedBox(
                height: 30,
              ),
              RefreshIndicator(
                onRefresh: refresh,
                child: FutureBuilder(
                  future: RecieveData(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    print('flag inside future: $flag');
                    print(snapshot.data[0]['name']);
                    print(snapshot.data[0]['email']);
                    print(snapshot.data[0]['mobile_no']);
                    print(snapshot.data[0]['location']);
                    if (snapshot.hasError) print(snapshot.error);
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: Text('waiting for connection....'));
                    }
                    if (!snapshot.hasData || snapshot.data.length == 0) {
                      return Center(
                        child: Text('No Data Found !!'),
                      );
                    }

                    return flag == 1
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 150,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                          color: Colors.black,
                                        )),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditProfileDetailPage(
                                                        name: snapshot.data[0]
                                                            ['name'],
                                                        mob: snapshot.data[0]
                                                            ['mobile_no'],
                                                        mail: snapshot.data[0]
                                                            ['email'],
                                                        id: uid,
                                                      )));
                                        },
                                        child: Text('Edit Details')),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 150,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                          color: Colors.black,
                                        )),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CreateNEwPasswordPage()));
                                        },
                                        child: Text('Change Password')),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 40,
                              ),
                              // Center(child: CircularProgressIndicator(
                              //
                              // )),
                              Text
                                  // ('VstyBy',
                                  (
                                '    ${snapshot.data[0]['name']}',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '    ${snapshot.data[0]['mobile_no']}',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '    ${snapshot.data[0]['email']}',
                                style: TextStyle(fontSize: 18),
                              ),
                              Visibility(
                                visible: locText == 'No Data' ? true : false,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    snapshot.data[0]['location']==''?Text('Location Unavailable'):
                                    Text(
                                      '    ${snapshot.data[0]['location']}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Column(
                                                    children: [
                                                      Text(
                                                        '$locContent',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: locContent ==
                                                                'Click button below to get the location'
                                                            ? TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 18)
                                                            : TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 18),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Visibility(
                                                        visible: locContent ==
                                                                'Click button below to get the location'
                                                            ? true
                                                            : false,
                                                        child: OutlinedButton(
                                                            onPressed:
                                                                ()  {
                                                              setState(() async {
                                                                await controller
                                                                    .getCurrentLocation()
                                                                    .toString();
                                                                locContent =
                                                                controller
                                                                    .currentLocation!;
                                                                controller.currentLocation ==
                                                                    null
                                                                    ? '--no Llocation selected--'
                                                                    : controller.currentLocation ==
                                                                    null
                                                                    ? '--wait for a while to get location or tap again below after a few seconds'
                                                                    : controller
                                                                    .currentLocation!;
                                                                myLatitude =
                                                                    controller
                                                                        .myLat;
                                                                myLongitude =
                                                                    controller
                                                                        .myLong;
                                                                myplace =
                                                                    controller
                                                                        .myplc;
                                                                print(
                                                                    'My Lattitude :$myLatitude');
                                                                print(
                                                                    'My longitude:$myLongitude');
                                                                print(
                                                                    'My Place :$myplace');
                                                                print(
                                                                    'My Location :$locContent');
                                                              });

                                                            },
                                                            child: Text(
                                                                'Get Location')),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Visibility(
                                                          visible: locContent ==
                                                                  'Click button below to get the location'
                                                              ? false
                                                              : true,
                                                          child: OutlinedButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  SendLocation();
                                                                });
                                                              },
                                                              child: Text(
                                                                  'Update'))),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text('Change  ')),
                                  ],
                                ),
                              ),

                              Visibility(
                                visible: locText == 'No Data' ? false : true,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text('$locText'),
                                    TextButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Column(
                                                    children: [
                                                      Text(
                                                        '$locContent',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: locContent ==
                                                                'Click button below to get the location'
                                                            ? TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 18)
                                                            : TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 18),
                                                      ),
                                                      Visibility(
                                                        visible: locContent ==
                                                                'Click button below to get the location'
                                                            ? true
                                                            : false,
                                                        child: OutlinedButton(
                                                            onPressed:
                                                                () async {
                                                              await controller
                                                                  .getCurrentLocation()
                                                                  .toString();
                                                              locContent =
                                                                  controller
                                                                      .currentLocation!;
                                                              controller.currentLocation ==
                                                                      null
                                                                  ? '--no Llocation selected--'
                                                                  : controller.currentLocation ==
                                                                          null
                                                                      ? '--wait for a while to get location or tap again below after a few seconds'
                                                                      : controller
                                                                          .currentLocation!;
                                                              myLatitude =
                                                                  controller
                                                                      .myLat;
                                                              myLongitude =
                                                                  controller
                                                                      .myLong;
                                                              myplace =
                                                                  controller
                                                                      .myplc;
                                                              print(
                                                                  'My Lattitude :$myLatitude');
                                                              print(
                                                                  'My longitude:$myLongitude');
                                                              print(
                                                                  'My Place :$myplace');
                                                              print(
                                                                  'My Location :$locContent');
                                                            },
                                                            child: Text(
                                                                'Get Location')),
                                                      ),
                                                      Visibility(
                                                          visible: locContent ==
                                                                  'Click button below to get the location'
                                                              ? false
                                                              : true,
                                                          child: ElevatedButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  SendLocation();
                                                                });
                                                              },
                                                              child: Text(
                                                                  'Update'))),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text('add')),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StationSlotPage()));
                    }, child: Text('My Slots')),
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     SizedBox(
              //       height: 30,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Card(
              //         elevation: 10,
              //         color: Colors.blue,
              //         child: Container(
              //           width: double.infinity,
              //           height: 135,
              //           color: Colors.white,
              //           child: Column(
              //             children: [
              //               SizedBox(
              //                 height: 20,
              //               ),
              //
              //             ],
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        )));
      },
    );
  }
}
