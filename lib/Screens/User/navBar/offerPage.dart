import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';
class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
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
                child: Center(child: Text('Offers',style: booking,textAlign: TextAlign.center,)),
              ),
              SizedBox(height: 20,),
              Container(
                height: 150,
                width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/offer5.png'),fit: BoxFit.cover
                )
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 185,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/offer2.png'),fit:BoxFit.cover

                      )
                    ),
                  ),

                  Container(
                    height: 150,
                    width: 185,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/offer1.png'),fit: BoxFit.cover

                      )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/offer3.png'),fit: BoxFit.cover
                  ),
                  border: Border.all(
                    color: Colors.black
                  )
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/offer4.png'),fit: BoxFit.cover
                    )
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
