import 'package:ayo_vaksin_app/screen/details_screen.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';

class PlaceDetailsScreen extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/d1.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 300,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "RSUP Dr. M. Djamil",
                              style: mediaumTextStyle.copyWith(
                                  fontSize: 18, color: Color(0xff1F3359)),
                            ),
                            Spacer(),
                            Text(
                              "AVAILABLE",
                              style: mediaumTextStyle.copyWith(
                                  fontSize: 15, color: Color(0xff2EA424)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 19,
                            ),
                            Text(
                              "  Jl. Perintis Kemerdekaan",
                              style: regularTextStyle.copyWith(
                                  fontSize: 14, color: Color(0xff364865)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Date",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 15, color: Color(0xff6F6F6F)),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today),
                            border: OutlineInputBorder(),
                          ),
                          onTap: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2015),
                              lastDate: DateTime(2025),
                            ).then((selectedDate) {
                              if (selectedDate != null) {
                                _textEditingController;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 120,
                                height: 37,
                                color: Color(0xff4B59E7),
                                child: Center(
                                    child: Text(
                                  '09 : 00 AM',
                                  style: regularwhiteTextStyle,
                                )),
                              ),
                            ),
                            ClipRRect(
                              child: Container(
                                width: 120,
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Center(child: Text('10 : 00 AM')),
                              ),
                            ),
                            ClipRRect(
                              child: Container(
                                width: 120,
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Center(child: Text('12 : 00 AM')),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 120,
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: Colors.blueAccent)),
                                child: Center(
                                    child: Text(
                                  '02 : 00 PM',
                                )),
                              ),
                            ),
                            ClipRRect(
                              child: Container(
                                width: 120,
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCBCBCB),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(child: Text('04 : 00 PM')),
                              ),
                            ),
                            ClipRRect(
                              child: Container(
                                width: 120,
                                height: 37,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffCBCBCB),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(child: Text('06 : 00 PM')),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen()));
                            },
                            color: Color(0xff2B3ACC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Booking Now',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    ' Details',
                    style: regularTextStyle.copyWith(fontSize: 20),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
