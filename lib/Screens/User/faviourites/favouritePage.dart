import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spot_ev/Screens/User/faviourites/favlist.dart';

import '../../styles/textstyle.dart';
class favouritePage extends StatelessWidget {
  const favouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon:Icon( Icons.arrow_back,color: Colors.white,) ),
                  SizedBox(width: 90,),
                  Text('Favorite',style: booking,textAlign: TextAlign.center,),
                ],
              ),            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: fav.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:  Color(0xff5A5AD2),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${fav[index]['name']}'),
                              Text('${fav[index]['add']}'),
                              Text('${fav[index]['pin']}'),

                            ],
                          ),
                          trailing: Icon(Icons.delete,color: Colors.black,),
                        ),
                      ),
                    ),
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
