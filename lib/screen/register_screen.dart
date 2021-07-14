import 'package:ayo_vaksin_app/screen/place_screen.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late DateTime date;
  late DateTime selectedDate;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xffF6F6FB),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 95,
                ),
                Text(
                  "Hi Wellcome Back,",
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Please give us some information to \nidentify your risk position",
                  style: regularTextStyle.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 45,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.card_membership),
                    border: OutlineInputBorder(),
                    labelText: 'NIK',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                    labelText: 'Tanggal Lahir',
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
                  height: 25,
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.home),
                    border: OutlineInputBorder(),
                    labelText: 'Alamat',
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlaceScreen()));
                    },
                    color: Color(0xff4B59E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Register Vaccine',
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
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
