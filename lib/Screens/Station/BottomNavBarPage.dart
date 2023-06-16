import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/Station/profile/StationProfile.dart';

import 'home/HomePage.dart';

class StationBottomNavBArPage extends StatefulWidget {
  StationBottomNavBArPage({Key? key}) : super(key: key);

  @override
  State<StationBottomNavBArPage> createState() =>
      _StationBottomNavBArPageState();
}

class _StationBottomNavBArPageState extends State<StationBottomNavBArPage> {
  int current_index = 0;
  List items = [StationHomePage(), StationProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (index){
          setState(() {
            current_index=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Profile')
        ],
      ),
    );
  }
}
