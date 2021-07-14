import 'package:ayo_vaksin_app/screen/register_screen.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffF6F6FB),
          child: Column(
            children: [
              Image.asset('assets/img.png'),
              Text(
                "Ayo vaksin",
                style: blackTextStyle.copyWith(fontSize: 30),
              ),
              SizedBox(
                height: 240,
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
                              builder: (context) => RegisterScreen()));
                    },
                    color: Color(0xff4B59E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
