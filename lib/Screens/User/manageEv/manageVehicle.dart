import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/manageEv/selectVehicle.dart';

import '../../styles/textstyle.dart';
class ManageVehicle extends StatelessWidget {
  const ManageVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Manage vehicle')),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            //   child: Row(
            //     children: [
            //       IconButton(onPressed: () {
            //         Navigator.pop(context);
            //       }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
            //       SizedBox(width: 65,),
            //       Text('Manage Vehicle',style: booking,textAlign: TextAlign.center,),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('My Vehicle',style: TextStyle(color: Colors.black,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Container(
                  height: 100,
                  width:300,
                  decoration: BoxDecoration(
                  color: Color(0xffB5B5D3),
                    borderRadius: BorderRadius.circular(10),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.car_crash,color: Color(0xff5A5AD2),size: 35,),
                      SizedBox(width: 10,),
                      Text('Tata Nexon EV',style:TextStyle(
                        fontSize: 24,
                        color: Color(0xff5A5AD2),
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Add a New Vehicle',style: TextStyle(color: Colors.black,fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectVehicles()));
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffB5B5D3),
                      borderRadius: BorderRadius.circular(10),),
                    child: Image(image: AssetImage('assets/addcar.webp'),fit: BoxFit.cover,)

                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
