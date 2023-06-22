import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spot_ev/Screens/UserORStationPage.dart';
import 'package:spot_ev/Screens/connect.dart';

import '../../../login.dart';
import '../../Station/home/MyStation/Slots/Stationlots.dart';
import '../../styles/textstyle.dart';
import '../Booking/Bookingtabbar.dart';
import '../BrandView/ManageVehicle.dart';
import '../Trips/tripPage.dart';
import '../faviourites/favouritePage.dart';
import '../history/chargingHistory.dart';
import '../wallet/walletPage.dart';
import 'editprofile.dart';


class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var uid = 11;
  var flag = 0;
  Future<void> refresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {

    });
  }
  Future<dynamic> RecieveData() async {
    var data = {'login_id': uid.toString()};
    var response = await post(Uri.parse('${con.url}/UserProfileRead.php'),body: data);
    print('uid: $uid');
    print(response.body);

    if (jsonDecode(response.body)[0]['result'] == 'Success') {
      flag = 1;
      print(response.body);
    }
    else {
      flag = 0;
      print(response.body);
    }
    return jsonDecode(response.body);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: refresh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                FutureBuilder(
                  future: RecieveData(),
                  builder: (BuildContext context,
                      AsyncSnapshot<dynamic> snapshot) {
                    print('flag inside future: $flag');
                    print(snapshot.data[0]['name']);
                    print(snapshot.data[0]['email']);
                    print(snapshot.data[0]['mobile_no']);
                    // print(snapshot.data[0]['location']);
                    if (snapshot.hasError) print(snapshot.error);
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: Text('waiting for connection....'));
                    }
                    if (!snapshot.hasData || snapshot.data.length == 0) {
                      return Center(
                        child: Text('No Data Found !!'),
                      );
                    }

                    return flag == 1 ?
                    Container(
                      height: 150,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          color: Color(0xff5A5AD2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Column(
                              children: [

                                Container(
                                  height: 85,
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(42),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xff0A1E93),
                                            Colors.lightBlueAccent
                                          ]
                                      )
                                  ),
                                  child: Icon(Icons.person_add_alt, size: 40,
                                    color: Colors.white,),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  '${snapshot.data[0]['name']}', style: profile,)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 14,),
                                Text('${snapshot.data[0]['email']}',
                                  style: profile,),
                                Text('${snapshot.data[0]['mobile_no']}',
                                  style: profile,),
                                SizedBox(height: 25,),
                                Container(
                                  height: 30,
                                  child: ElevatedButton(
                                      style:ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                      ),
                                      onPressed: () {}, child: Row(
                                    children: [
                                      Icon(Icons.edit, color: Colors.black,),
                                      SizedBox(height: 45,),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfilePage(
                                                  name:snapshot.data[0]['name'],
                                                  mob:snapshot.data[0]['mobile_no'],
                                                  mail:snapshot.data[0]['email'],
                                                  id:uid,
                                                ),));
                                        },
                                        child: Text(
                                          ' Edit Profile', style: TextStyle(
                                            color: Colors.black
                                        ),),
                                      )
                                    ],
                                  )),
                                )
                              ],
                            ),
                            //Pop up menu
                            Icon(CupertinoIcons.line_horizontal_3,
                              color: Colors.white,)

                          ],
                        ),
                      ),

                    ) :
                    Center(child: CircularProgressIndicator(),);
                  },

                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ManageVehicle(),));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(CupertinoIcons.car),
                                SizedBox(width: 40,),
                                Text('ManageEV')
                              ],

                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => BookingTabbar(),));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(CupertinoIcons.bookmark),
                                SizedBox(width: 40,),
                                Text('My Bookings')
                              ],

                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ChargingHistory()));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(CupertinoIcons.lock),
                                SizedBox(width: 40,),
                                Text('History')
                              ],

                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => WalletPage()));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(Icons.wallet_outlined),
                                SizedBox(width: 40,),
                                Text('Wallet')
                              ],

                            ),
                          ),
                        ),
                      ), Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => TripPlannerPage(),));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(CupertinoIcons.map_pin_ellipse),
                                SizedBox(width: 40,),
                                Text('Trips')
                              ],

                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => favouritePage(),));
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(CupertinoIcons.heart),
                                SizedBox(width: 40,),
                                Text('Favorites')
                              ],

                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,

                        child: GestureDetector(
                          onTap: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                elevation: 100,
                                title: Text('Are you sure you want to logout ?'),
                                actions: [
                                  TextButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            USerORStationPage()));
                                  }, child: Text('yes')),
                                  TextButton(onPressed: () {}, child: Text('No'))
                                ],
                              );
                            }
                            );
                          },
                          child: Container(
                            height: 70,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 30,),
                                Icon(Icons.logout),
                                SizedBox(width: 40,),
                                Text('Logout')
                              ],

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

