// import 'package:flutter/foundation.dart';
// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loyalty_app/colors.dart';
import 'package:loyalty_app/tabs/History.dart';
// import 'package:loyalty_app/tabs/Michu.dart';
import 'package:loyalty_app/tabs/Redeem.dart';

import '../utils/simple_preference.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  // final PageController _controller = PageController();
  // var _currentIndex = 0;
  final PageController _pageController = PageController();
  bool loading = true;
  double _currentPage = 0;
  List? user;
  List? challenge0;
  List? challenge1;
  List? challenge2;
  List? challenge3;
  List? challenge4;
  List? challenge5;
  List? challenge6;
  List? challenge7;
  List? challenge8;
  List? bronze;
  List? silver;
  List? gold;
  List? platinium;
  List? data;
  late String totalPoints;
  late String toETB;
  late String status;
  late String color;
  late String bronzePoint = "";
  late String bronzeStatus = "";
  late String silverPoint = "";
  late String silverStatus = "";
  late String goldPoint = "";
  late String goldStatus = "";
  late String platiniumPoint = "";
  late String platiniumStatus = "";
  late String challenge0Image;
  late String challenge0name;
  late String challenge0earn;
  late String challenge0Points;
  late String challenge0Link;
  late String challenge1Image;
  late String challenge1name;
  late String challenge1earn;
  late String challenge1Points;
  late String challenge1Link;
  late String challenge2Image;
  late String challenge2name;
  late String challenge2earn;
  late String challenge2Points;
  late String challenge2Link;
  late String challenge3Image;
  late String challenge3name;
  late String challenge3earn;
  late String challenge3Points;
  late String challenge3Link;
  late String challenge4Image;
  late String challenge4name;
  late String challenge4earn;
  late String challenge4Points;
  late String challenge4Link;
  late String challenge5Image;
  late String challenge5name;
  late String challenge5earn;
  late String challenge5Points;
  late String challenge5Link;
  late String challenge6Image;
  late String challenge6name;
  late String challenge6earn;
  late String challenge6Points;
  late String challenge6Link;
  late String challenge7Image;
  late String challenge7name;
  late String challenge7earn;
  late String challenge7Points;
  late String challenge7Link;
  late String challenge8Image;
  late String challenge8name;
  late String challenge8earn;
  late String challenge8Points;
  late String challenge8Link;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
    getDatas();
  }

  Future<void> getDatas() async {
    user = await SimplePreferences().getUser();
    data = await SimplePreferences().getData();
    totalPoints = data?[0];
    toETB = data?[1];
    status = data?[2];
    color = data?[3];
    silver = await SimplePreferences().getSilver();
    silverPoint = silver?[1];
    silverStatus = silver?[2];
    bronze = await SimplePreferences().getBronze();
    bronzePoint = bronze?[1];
    bronzeStatus = bronze?[2];
    gold = await SimplePreferences().getGold();
    goldPoint = gold?[1];
    goldStatus = gold?[2];
    platinium = await SimplePreferences().getPlatinium();
    platiniumPoint = platinium?[1];
    platiniumStatus = platinium?[2];
    challenge0 = await SimplePreferences().getChallenge0();
    challenge0name = challenge0?[4];
    challenge0Image = challenge0?[0];
    challenge0earn = challenge0?[2];
    challenge0Points = challenge0?[3];
    challenge0Link = challenge0?[1];
    challenge0 = await SimplePreferences().getChallenge1();
    challenge0name = challenge1?[4];
    challenge0Image = challenge1?[0];
    challenge0earn = challenge1?[2];
    challenge0Points = challenge1?[3];
    challenge0Link = challenge1?[1];
    challenge0 = await SimplePreferences().getChallenge2();
    challenge0name = challenge2?[4];
    challenge0Image = challenge2?[0];
    challenge0earn = challenge2?[2];
    challenge0Points = challenge2?[3];
    challenge0Link = challenge2?[1];
    challenge0 = await SimplePreferences().getChallenge3();
    challenge0name = challenge3?[4];
    challenge0Image = challenge3?[0];
    challenge0earn = challenge3?[2];
    challenge0Points = challenge3?[3];
    challenge0Link = challenge3?[1];
    challenge0 = await SimplePreferences().getChallenge4();
    challenge0name = challenge4?[4];
    challenge0Image = challenge4?[0];
    challenge0earn = challenge4?[2];
    challenge0Points = challenge4?[3];
    challenge0Link = challenge4?[1];
    challenge0 = await SimplePreferences().getChallenge5();
    challenge0name = challenge5?[4];
    challenge0Image = challenge5?[0];
    challenge0earn = challenge5?[2];
    challenge0Points = challenge5?[3];
    challenge0Link = challenge5?[1];
    challenge0 = await SimplePreferences().getChallenge6();
    challenge0name = challenge6?[4];
    challenge0Image = challenge6?[0];
    challenge0earn = challenge6?[2];
    challenge0Points = challenge6?[3];
    challenge0Link = challenge6?[1];
    challenge0 = await SimplePreferences().getChallenge7();
    challenge0name = challenge7?[4];
    challenge0Image = challenge7?[0];
    challenge0earn = challenge7?[2];
    challenge0Points = challenge7?[3];
    challenge0Link = challenge7?[1];
    challenge0 = await SimplePreferences().getChallenge8();
    challenge0name = challenge8?[4];
    challenge0Image = challenge8?[0];
    challenge0earn = challenge8?[2];
    challenge0Points = challenge8?[3];
    challenge0Link = challenge8?[1];
    setState(() {
      loading = false;
    });
    print("from home");
    print(challenge0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors_selector.tertiaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors_selector.tertiaryColor,
                  Colors_selector.tertiaryColor
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
                // bottomLeft: Radius.circular(30),
                // bottomRight: Radius.circular(30)),
                ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(23, 23, 23, 23),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          loading ? Colors.grey : hexToColor(color),
                          loading ? Colors.grey : hexToColor(color)
                          // Color(0xFFDFB64D),
                          // Color(0xFFDFB64D)
                          // Color.fromRGBO(223, 182, 77, 1),
                          // Color.fromRGBO(223, 182, 77, 1)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.61,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.black,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.zero,
                              bottomRight: Radius.zero,
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Column(children: [
                          // Row(
                          //   children: [
                          //     Align(
                          //         alignment: Alignment.topLeft,
                          //         child: Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: CircleAvatar(
                          //             radius: 30,
                          //             backgroundColor: Colors.black,
                          //             child:
                          //                 Image.asset("assets/images/michu.png"),
                          //           ),
                          //         )),
                          //     Padding(
                          //       padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                          //       child: Text(
                          //         "Id : 2131242342",
                          //         style: GoogleFonts.roboto(
                          //             fontSize: 17, color: Colors.white),
                          //       ),
                          //     )
                          //   ],
                          // ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "AVAILABLE POINTS",
                                style: GoogleFonts.roboto(color: Colors.grey),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 12, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    loading ? "" : "$totalPoints ",
                                    style: GoogleFonts.roboto(
                                        fontSize: 28, color: Colors.white),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Text(loading ? "" : " = $toETB ETB",
                                      style: GoogleFonts.roboto(
                                          fontSize: 20, color: Colors.grey)),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Redeem(), // Replace with your screen widget
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.swap_horiz_sharp,
                                            color: loading
                                                ? Colors.grey
                                                : hexToColor(color),
                                          ),
                                          Text(
                                            " Exchange",
                                            style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color: loading
                                                    ? Colors.grey
                                                    : hexToColor(color)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                History(), // Replace with your screen widget
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            30.0, 0, 0, 0),
                                        child: Text(
                                          " History >",
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                      Column(
                        children: [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      loading ? "" : status,
                                      style: GoogleFonts.playfairDisplay(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  )))
                        ],
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(23, 7, 23, 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: !loading
                                        ? (bronzeStatus == "2"
                                            ? Colors.green
                                            : bronzeStatus == "1"
                                                ? Colors.amber
                                                : Colors.grey)
                                        : Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Icon(
                                Icons.emoji_events,
                                color: Colors.brown.shade700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 4),
                            child: Row(
                              children: [
                                Text(
                                  "Bronze",
                                  style: GoogleFonts.roboto(
                                      color: !loading
                                          ? (bronzeStatus == "2"
                                              ? Colors.green
                                              : bronzeStatus == "1"
                                                  ? Colors.amber
                                                  : Colors.grey)
                                          : Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                bronzeStatus == "2"
                                    ? const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(2.0, 0, 0, 0),
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: Colors.green,
                                            child: Icon(
                                              Icons.done,
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          Text(
                            bronzePoint,
                            style: GoogleFonts.roboto(
                                fontSize: 12, color: Colors_selector.grey),
                          )
                        ],
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width *
                            0.04, // Width of the line
                        decoration: BoxDecoration(
                          color: !loading
                              ? (bronzeStatus == "2"
                                  ? Colors.green
                                  : bronzeStatus == "1"
                                      ? Colors.amber
                                      : Colors.grey)
                              : Colors.grey, // Color of the line
                          // Adjust as needed
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: !loading
                                        ? (silverStatus == "2"
                                            ? Colors.green
                                            : silverStatus == "1"
                                                ? Colors.amber
                                                : Colors.grey)
                                        : Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.star_half,
                                  color: Color.fromRGBO(168, 166, 167, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 4),
                            child: Row(
                              children: [
                                Text(
                                  "Silver",
                                  style: GoogleFonts.roboto(
                                      color: !loading
                                          ? (silverStatus == "2"
                                              ? Colors.green
                                              : silverStatus == "1"
                                                  ? Colors.amber
                                                  : Colors.grey)
                                          : Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                silverStatus == "2"
                                    ? const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(2.0, 0, 0, 0),
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: Colors.green,
                                            child: Icon(
                                              Icons.done,
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          Text(
                            silverPoint,
                            style: GoogleFonts.roboto(
                                fontSize: 12, color: Colors_selector.grey),
                          )
                        ],
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width *
                            0.04, // Width of the line
                        decoration: BoxDecoration(
                          color: !loading
                              ? (silverStatus == "2"
                                  ? Colors.green
                                  : silverStatus == "1"
                                      ? Colors.amber
                                      : Colors.grey)
                              : Colors.grey, // Color of the line
                          // Adjust as needed
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: !loading
                                        ? (goldStatus == "2"
                                            ? Colors.green
                                            : goldStatus == "1"
                                                ? Colors.amber
                                                : Colors.grey)
                                        : Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(
                                Icons.stars,
                                color: Color.fromRGBO(223, 182, 77, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 4),
                            child: Row(
                              children: [
                                Text(
                                  "Gold",
                                  style: GoogleFonts.roboto(
                                      color: !loading
                                          ? (goldStatus == "2"
                                              ? Colors.green
                                              : goldStatus == "1"
                                                  ? Colors.amber
                                                  : Colors.grey)
                                          : Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                goldStatus == "2"
                                    ? const Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            2.0, 0, 0, 0),
                                        child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.green,
                                            child: Icon(
                                              Icons.done,
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          Text(
                            goldPoint,
                            style: GoogleFonts.roboto(
                                fontSize: 12, color: Colors_selector.grey),
                          )
                        ],
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width *
                            0.04, // Width of the line
                        decoration: BoxDecoration(
                            color: !loading
                                ? (goldStatus == "2"
                                    ? Colors.green
                                    : goldStatus == "1"
                                        ? Colors.amber
                                        : Colors.grey)
                                : Colors.grey // Adjust as needed
                            ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: !loading
                                        ? (platiniumStatus == "2"
                                            ? Colors.green
                                            : platiniumStatus == "1"
                                                ? Colors.amber
                                                : Colors.grey)
                                        : Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.star, color: Colors.cyan),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 4),
                            child: Row(
                              children: [
                                Text(
                                  "Platinium",
                                  style: GoogleFonts.roboto(
                                      color: !loading
                                          ? (platiniumStatus == "2"
                                              ? Colors.green
                                              : platiniumStatus == "1"
                                                  ? Colors.amber
                                                  : Colors.grey)
                                          : Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                platiniumStatus == "2"
                                    ? const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(2.0, 0, 0, 0),
                                        child: CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.green,
                                            child: Icon(
                                              Icons.done,
                                              size: 12,
                                              color: Colors.white,
                                            )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          Text(
                            platiniumPoint,
                            style: GoogleFonts.roboto(
                                fontSize: 12, color: Colors_selector.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors_selector.grey, // Adjust the color as needed
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                8,
                                0,
                                0,
                              ),
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 30,
                                  child:
                                      Image.asset("assets/images/ebirr.png")),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "You have earned 325",
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("E-Birr Points ",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                                  "Just share your E-Birr affiliate link and earn 300 points ",
                                  style: GoogleFonts.roboto(fontSize: 15)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.83,
                              height: MediaQuery.of(context).size.height * 0.09,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: CustomPaint(
                                painter: DashedBorderPainter(borderRadius: 1),
                                child: Container(
                                  // This nested container will contain the content of your main container
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          "https://play.google.com/store/apps/details?\nid=om.example.e-birrapp&user_id=1",
                                          style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            letterSpacing: 0.0,
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 8, 0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Clipboard.setData(
                                                      const ClipboardData(
                                                          text:
                                                              "https://play.google.com/store/apps/details?id=om.example.michuapp&user_id=1"));
                                                  // Fluttertoast.showToast(
                                                  //     msg: "Copied to clipboard",
                                                  //     fontSize: 18);
                                                },
                                                child: Icon(Icons.copy),
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                DotsIndicator(
                  dotsCount: 7,
                  position: _currentPage.toInt(),
                  decorator: DotsDecorator(
                    activeColor: Colors_selector.primaryColor,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
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

class DashedBorderPainter extends CustomPainter {
  final double borderRadius;

  DashedBorderPainter({this.borderRadius = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final dashWidth = 5;
    final dashSpace = 5;

    // Draw top dashed line
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, borderRadius),
        Offset(startX + dashWidth, borderRadius),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    // Draw right dashed line
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width - borderRadius, startY),
        Offset(size.width - borderRadius, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }

    // Draw bottom dashed line
    startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height - borderRadius),
        Offset(startX + dashWidth, size.height - borderRadius),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    // Draw left dashed line
    startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(borderRadius, startY),
        Offset(borderRadius, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
