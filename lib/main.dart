import 'package:flutter/material.dart';
import 'Screens/OTPverification.dart';
import 'Screens/User/Booking/Bookingcomplete.dart';
import 'Screens/User/Booking/Bookingtabbar.dart';
import 'Screens/User/Booking/cancelledBookings.dart';
import 'Screens/User/Trips/tripPage.dart';
import 'Screens/User/faviourites/favouritePage.dart';
import 'Screens/User/history/chargingHistory.dart';
import 'Screens/User/history/paymentHistory.dart';
import 'Screens/User/manageEv/manageVehicle.dart';
import 'Screens/User/manageEv/selectVehicle.dart';
import 'Screens/User/navBar/home/homePage.dart';
import 'Screens/User/navBar/navBar.dart';
import 'Screens/User/navBar/offerPage.dart';
import 'Screens/User/navBar/stations/BookASection.dart';
import 'Screens/User/navBar/stations/chargingSessionSummary.dart';
import 'Screens/User/navBar/stations/overViewPage.dart';
import 'Screens/User/navBar/stations/paymentProcess.dart';
import 'Screens/User/navBar/stations/photosGridStation.dart';
import 'Screens/User/navBar/stations/reviewPage.dart';
import 'Screens/User/navBar/stations/stationDetailPage.dart';
import 'Screens/User/navBar/stations/stationRating.dart';
import 'Screens/User/navBar/stations/stationlist.dart';
import 'Screens/User/navBar/stations/stationpayment.dart';
import 'Screens/User/popupmenu/complaints.dart';
import 'Screens/User/profile/editprofile.dart';


import 'Screens/User/profile/profile.dart';
import 'Screens/User/wallet/walletPage.dart';
import 'Screens/otpPage.dart';
import 'Screens/signup.dart';
import 'login.dart';
void main(){
 runApp (MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      BottomNavBar(),
    );
  }
}
