import 'package:ayo_vaksin_app/screen/details_screen.dart';
import 'package:ayo_vaksin_app/screen/places_details.dart';
import 'package:ayo_vaksin_app/theme.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String nama;
  final String alamat;
  final String status;
  final String imgUrl;

  PlaceCard(
      {required this.nama,
      required this.alamat,
      required this.status,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PlaceDetailsScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 107,
          color: whiteColor,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "$imgUrl",
                  width: 95,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$nama",
                      style: mediaumTextStyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 19,
                        ),
                        Text(
                          "  $alamat",
                          style: regularTextStyle.copyWith(
                              fontSize: 13, color: Color(0xff364865)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "$status",
                      style: boltwhiteTextStyle.copyWith(
                          fontSize: 14, color: Color(0xff2EA424)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
