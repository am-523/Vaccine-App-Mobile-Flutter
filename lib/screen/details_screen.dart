import 'package:ayo_vaksin_app/screen/place_screen.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6FB),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
                child: Image.asset('assets/Subtract.png')),
            Positioned(
              top: 180,
              left: 70,
              right: 70,
              child: Container(
                width: 110,
                height: 280,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/qrcode.png',
                      width: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "VA0027",
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 490,
              left: 70,
              right: 70,
              child: Container(
                child: DottedLine(
                  dashColor: Colors.white,
                  dashGapLength: 7.0,
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 60,
              right: 60,
              child: Container(
                height: 110,
                width: 80,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: regularTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "Date",
                          style: regularTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "Location",
                          style: regularTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "Time",
                          style: regularTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jenniver Simanjuntak",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "16 July 2021",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "RSUP Dr. M. Djamil",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                        Text(
                          "09 - 00 AM",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 750,
              right: 20,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PlaceScreen()));
                  },
                  color: Color(0xff2B3ACC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Done',
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
