import 'package:flutter/material.dart';

import '../../../styles/textstyle.dart';
import 'StationAllbooking.dart';
import 'StationCancelledBooking.dart';
class StationsBookingPage extends StatelessWidget {
  const StationsBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        body:  Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff5A5AD2),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                  )
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
                  SizedBox(width: 80,),
                  Center(child: Text('My Bookings',style: booking,textAlign: TextAlign.center,)),
                ],
              ),
            ),
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs:
              [
                Tab(text: 'All Bookings',),
                Tab(text: 'Cancelled Booking',),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
              StationAllBookingPage(),
                StationCancelledBooking(),
              ]),
            )
          ],
        ),
      ),
    );

  }
}
