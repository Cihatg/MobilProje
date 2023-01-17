// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/page_doktor/doktor_detayli_profil.dart';
// import 'package:flutter_application_1/screen/page_hasta/hasta_doktor_listesi.dart';
// import 'package:flutter_application_1/server_util/processed_requests.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:page_transition/page_transition.dart';
//
// import '../../server_util/classes.dart';
// import '../../server_util/requests.dart';
//
// class YorumEkle extends StatefulWidget {
//   const YorumEkle({Key? key, required this.doktor}) : super(key: key);
//   final Doktor doktor;
//   @override
//   State<YorumEkle> createState() => _YorumEkleState();
// }
//
// class _YorumEkleState extends State<YorumEkle> {
//   TextEditingController yorum = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     void yorumGonder(String icerik) {
//       yorumGonderme(widget.doktor.doktor_ID);
//     }
//
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Yorum Ekle"),
//         ),
//         body: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 70,
//             ),
//             const Card(
//               color: Colors.white,
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: yorum,
//                   onChanged: (value) {
//                     if (value.length > 0)
//                       setState(() {
//                         gonderButton = true;
//                       });
//                     else
//                       setState(() {
//                         gonderButton = false;
//                       });
//                   },
//                   maxLines: 7, //or null
//                   decoration: InputDecoration(
//                       hintText: "Yorumunuzu yazınız...",
//                       hintStyle: TextStyle(color: Colors.black54),
//                       border: InputBorder.none),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                       Color.fromARGB(255, 138, 134, 226),
//                     ),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(18.0),
//                             side: BorderSide(
//                                 color: Color.fromARGB(199, 0, 0, 0))))),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     PageTransition(
//                       type: PageTransitionType.fade,
//                       child: DoktorDetayliSayfa(doktor: widget.doktor),
//                       isIos: true,
//                       duration: Duration(milliseconds: 800),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   "Yorumu Ekle",
//                   style:
//                       GoogleFonts.pacifico(color: Color.fromARGB(199, 0, 0, 0)),
//                 )),
//           ],
//         ));
//   }
// }
