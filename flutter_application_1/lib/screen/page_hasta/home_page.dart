import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../server_util/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.hasta}) : super(key: key);
  final Hasta hasta;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              "Merhaba, Sn." +
                  ' ' +
                  widget.hasta.hasta_ISIM +
                  ' ' +
                  widget.hasta.hasta_SOYISIM.toUpperCase(),
              style: GoogleFonts.indieFlower(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              child: Text(
            "Hadi Doktorunuzu Bulun",
            style: GoogleFonts.indieFlower(
                color: Color.fromARGB(199, 0, 0, 0), fontSize: 18),
          )),
          SizedBox(
            height: 80,
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.shutterstock.com/image-vector/woman-patient-character-calling-professional-600w-1192015546.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
        ]),
      ),
    );
  }
}
