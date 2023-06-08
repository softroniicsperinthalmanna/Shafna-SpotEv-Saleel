import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';
class ComplaintPage extends StatelessWidget {
  const ComplaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Complaints')),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
      ),
      body: Column(
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
          //       SizedBox(width: 75,),
          //       Text('Complaints',style: booking,textAlign: TextAlign.center,),
          //     ],
          //   ),
          // ),
          SizedBox(height:20),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Complaints',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
                )
              ),
            ),
          ),


        ],
      ),
    );
  }
}
