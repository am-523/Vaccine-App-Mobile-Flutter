import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              color: Color(0xffF6F6FB),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          ' Profile',
                          style: regularTextStyle.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "My Certificate",
                      style: regularTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/ct.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "My History",
                      style: regularTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: ListTile(
                        leading: Text(
                          "Vaksinasi Pertama",
                          style: mediaumTextStyle,
                        ),
                        trailing: Text("12/Juni/2021"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Text(
                          "Vaksinasi Kedua",
                          style: mediaumTextStyle,
                        ),
                        trailing: Text("19/Juli/2021"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SlidingUpPanel(
            color: Colors.white,
            collapsed: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(child: Image.asset('assets/sl.png')),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: edge, vertical: 20),
                    child: Text("Referal",
                        style: mediaumTextStyle.copyWith(fontSize: 18)),
                  ),
                  Spacer(),
                ],
              ),
            ),
            panel: Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Center(child: Image.asset('assets/sl.png')),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Referal",
                      style: mediaumTextStyle.copyWith(fontSize: 22)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "GAyoo!! ajak keluarga, kerabat, sahabat kamu yang belum divaksin dan dapatkan hadiah menarik dan uang senilai jutaan rupiah."),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "https://www.ayokvasin.id/referal/12345678ff",
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                        },
                        color: Color(0xff4B59E7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Copy',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Or share via',
                      style: greyTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Image.asset('assets/ig.png'),
                      Spacer(),
                      Image.asset('assets/wa.png'),
                      Spacer(),
                      Image.asset('assets/ot.png'),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
