import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';
import 'ChargingHistory/PaymentHistoryPage.dart';
import 'ChargingHistory/StationChargingHistory.dart';
import 'ManageEv/StationListandAddStation.dart';
import 'Offers/Offerpage.dart';
import 'StationBooking/BookingBottom.dart';
import 'complaints.dart';
class StationHomePage extends StatelessWidget {
  const StationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                  color: Color(0xff0000ff),
                  ),
                  color: Color(0xffEE5A8F),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 118,
                      width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff0000ff),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/ev3.jpg'
                      ),fit: BoxFit.cover
                    )
                  )),
                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text('ChargeBy',style: booking,),
                    )),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StationListAndAddPAge()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff8E0FBA),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.ev_station_outlined,color: Colors.white,size: 40,),
                              Text('Stations',style: profile,)
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StationsBookingPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFF795B),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.menu_book,color: Colors.white,size: 40,),
                              Text('Bookings',style: profile,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StationChargingHistory()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff0FBA54),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.history,color: Colors.white,size: 40,),
                              Text('Charging History',style: profile,)
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StationOfferPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFD5D5D),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.local_offer_sharp,color: Colors.white,size: 40,),
                              Text('Offers',style: profile,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ComplaintPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff1560F0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.list_alt_sharp,color: Colors.white,size: 40,),
                              Text('Complaints',style: profile,)
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentHistoryPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff0000ff),

                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff306576),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.history,color: Colors.white,size: 40,),                              Text('Payment History',style: profile,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
