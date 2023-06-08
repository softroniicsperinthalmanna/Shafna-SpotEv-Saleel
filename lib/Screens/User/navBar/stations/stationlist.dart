import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/navBar/stations/stationDetailPage.dart';

import '../../../styles/textstyle.dart';
class StationList extends StatefulWidget {
   StationList({Key? key}) : super(key: key);

  @override
  State<StationList> createState() => _StationListState();
}

class _StationListState extends State<StationList> {

var is_selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Station')),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 150,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //       color: Color(0xff5A5AD2),
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(30),
            //           bottomRight: Radius.circular(30)
            //       )
            //   ),
            //   child: Center(child: Text('Stations',style: booking,textAlign: TextAlign.center,)),
            // ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left :8.0,right: 70,top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search station',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      )
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15,top: 15),
                  child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                            radius: 22.5,
                            backgroundColor: Colors.white,
                            child: Icon(CupertinoIcons.slider_horizontal_3,color: Colors.black,)),
                      )),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StationDetailPage()));
                      },
                      child: Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('YX Vestby'),
                                      SizedBox(width: 19,),
                                      Text('45km'),
                                      SizedBox(width:100,),
                                      IconButton(onPressed: () {
                                        setState(() {
                                          is_selected=!is_selected;
                                        });
                                      },
                                      icon: (is_selected)?Icon(Icons.star,color: Colors.amber,):Icon(Icons.star_border)),
                                      SizedBox(width: 10,),
                                      Icon(Icons.turn_right_rounded)
                                    ],
                                  ),
                                  Text('Palakkad'),
                                  SizedBox(height: 3,),
                                  Row(
                                    children: [
                                      Text('4.0'),
                                      Icon(Icons.star,color: Colors.amber,size: 20,),
                                      Icon(Icons.star,color: Colors.amber,size: 20,),
                                      Icon(Icons.star,color: Colors.amber,size: 20,),
                                      Icon(Icons.star,color: Colors.amber,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Text('(20)')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3,),
                            Container(height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.charging_station,size: 17,),
                                    SizedBox(height: 1,),
                                    Icon(Icons.charging_station,size: 17,),
                                    SizedBox(height: 1,),
                                    Icon(Icons.charging_station,size: 17,),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('CSS'),
                                    Text('Type-2'),
                                    Text('CHAdeMo')
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(':  110 KW'),
                                    Text(':  22 KW'),
                                    Text(':  50 KW'),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text('2/4'),
                                    Text('2/2'),
                                    Text('0/1')
                                  ],
                                ),
                              ],
                            ),)
                          ],
                        ),

                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),

    );
  }
}
