import 'package:flutter/material.dart';
import 'Screens/AppBarPage.dart';
import 'Screens/OTPverification.dart';
import 'Screens/Station/BottomNavBarPage.dart';
import 'Screens/Station/home/ChargingHistory/StationChargingHistory.dart';
import 'Screens/Station/home/HomePage.dart';
import 'Screens/Station/home/MyStation/AddStation.dart';
import 'Screens/Station/home/ManageEv/StationDetailsPage.dart';
import 'Screens/Station/home/ManageEv/StationListandAddStation.dart';
import 'Screens/Station/home/ManageEv/stationSubmitPage.dart';
import 'Screens/Station/home/MyStation/Slots/SlotsDropDowns.dart';
import 'Screens/Station/home/MyStation/Slots/Stationlots.dart';
import 'Screens/Station/home/MyStation/StationLocationSubmitPage.dart';

import 'Screens/Station/home/StationBooking/BookingBottom.dart';

import 'Screens/Station/home/Stationprofile/stationProfileEdit.dart';
import 'Screens/Station/profile/EditProfileDetailsPage.dart';
import 'Screens/Station/profile/StationProfile.dart';
import 'Screens/Station/profile/changePasswordPage.dart';
import 'Screens/Station/profile/stationLocationEditPage.dart';
import 'Screens/User/Booking/Bookingcomplete.dart';
import 'Screens/User/Booking/Bookingtabbar.dart';
import 'Screens/User/Booking/cancelledBookings.dart';
import 'Screens/User/BrandView/SELECTFILE.dart';
import 'Screens/User/Trips/tripPage.dart';
import 'Screens/User/faviourites/favouritePage.dart';
import 'Screens/User/history/chargingHistory.dart';
import 'Screens/User/history/paymentHistory.dart';

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

import 'Screens/UserORStationPage.dart';
import 'Screens/otpPage.dart';
import 'Screens/signup.dart';
import 'Screens/forgetPassword.dart';
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
      home:ProfilePage()
     // BottomNavBar(),
    );
  }
}
