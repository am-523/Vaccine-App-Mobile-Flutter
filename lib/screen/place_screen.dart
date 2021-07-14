import 'package:ayo_vaksin_app/screen/profile_screen.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:ayo_vaksin_app/widget/place.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xffF6F6FB),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.account_circle_sharp),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Your vaccination status high priotity.",
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "You can start your covid-19 vaccination process immediately. \nPlease, select available medical center near by.",
                  style: regularTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Search anything",
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: ListView(
                    children: [
                      PlaceCard(
                        nama: 'RSUP Dr. M. Djamil',
                        alamat: 'Jl. Perintis Kemerdekaan',
                        status: 'AVAILABLE',
                        imgUrl: 'assets/p1.png',
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      PlaceCard(
                        nama: 'RS Hermina ',
                        alamat: 'Jl. Khatib Sulaiman',
                        status: 'AVAILABLE',
                        imgUrl: 'assets/p2.png',
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      PlaceCard(
                        nama: 'RSI Ibnu Sina. ',
                        alamat: 'Jl. Gajah Mada',
                        status: 'NOT AVAILABLE',
                        imgUrl: 'assets/p3.png',
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      PlaceCard(
                        nama: 'RS. Bhayangkara',
                        alamat: 'Jl. Jati No.1',
                        status: 'AVAILABLE',
                        imgUrl: 'assets/p4.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
