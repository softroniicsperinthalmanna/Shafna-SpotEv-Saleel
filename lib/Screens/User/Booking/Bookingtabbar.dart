import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';

import 'Bookingcomplete.dart';
import 'cancelledBookings.dart';
class BookingTabbar extends StatelessWidget {
  const BookingTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
        children: [
        IconButton(onPressed: () {
      Navigator.pop(context);
      }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
      SizedBox(width: 100,),
      Text('My Bookings',style: booking,textAlign: TextAlign.center,),
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
                bookingComplete(),
                CancelledBookings(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
