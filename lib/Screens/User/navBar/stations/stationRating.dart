import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spot_ev/Screens/connect.dart';
import 'package:spot_ev/Screens/styles/textstyle.dart';
class StationRating extends StatefulWidget {
   StationRating({Key? key}) : super(key: key);

  @override
  State<StationRating> createState() => _StationRatingState();
}

class _StationRatingState extends State<StationRating> {
  Future<String?> getLoginId() async {
    SharedPreferences pref =await SharedPreferences.getInstance();
    String? LoginID=pref.getString('LoginID');
    return LoginID;
  }

  var uid;
  var log_id;
  var flag = 0;
  var comment=TextEditingController();
  double rating=0;
  var date=DateTime.now();
  var select=false;
Future<void> sendData() async {
  uid=await getLoginId();
  print('uid: $uid');
  var data={
    'station_id':12.toString(),
    'comment':comment.text,
    // 'date':date.toString(),
    'user_id':uid,
    'rating':rating.toString(),
    'timestamp':date.toString(),
  };
  var response=await post(Uri.parse('${con.url}/reviewAndrating.php'),body: data);
  if(uid!=null)
    print('uid: $uid');
  else{
    print('uid value not found');
  }
  //print(response.body);
  print(response.body);
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            },
            icon:
             Icon(Icons.arrow_back)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('YX Vestyby',style: black,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text('A'),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Anil Prakash'),
                      Row(
                        children: [
                          Text('Posting publically '),
                          Icon(Icons.info_outline,size: 18,)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  for(int i=1;i<=5;i++)
                    InkWell(
                        onTap: (){
                          setState(() {
                            rating=i.toDouble();
                          });
                        },
                        child: Icon(i<=rating?Icons.star:Icons.star_border,size: 30,color: Colors.amber,
                        ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Share more about your experience',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: comment,
                  autocorrect: true,
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'share details of your own experience at \nthis place',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:  Color(0xff0000FF),
                        width: 2,
                      )
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0000FF),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.deepPurple,)),
                    TextButton(onPressed: () {  },
                    child: Text('Add Yours',style: TextStyle(color: Colors.black),)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Color(0xff5A5AD2),
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){
                        setState(() {
                          sendData();
                        });
                      }, child: Text('Post'))),
            ),
          ],
        ),
      ),
    );
  }
}
