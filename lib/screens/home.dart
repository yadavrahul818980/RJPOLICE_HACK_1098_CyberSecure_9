import 'package:cyber_secure/screens/trends.dart';
import 'package:cyber_secure/view/view_model/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/background_img.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [buildheading(context)],
            ))
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    NewsViewModel newsViewModel = NewsViewModel();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.015),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(children: [
                Image.asset(
                  'assets/profil.png',
                  height: screenHeight * 0.05,
                ),
                SizedBox(
                  width: screenWidth * 0.63,
                ),
                Image.asset(
                  'assets/notification.png',
                  height: screenHeight * 0.045,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Text(
            'Hi, Rahul Yadav',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.006,
          ),
          Text(
            'Welcome to CyberSecure ',
            style: TextStyle(
              color: Color(0xFFDAE2F2),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(height: screenHeight * 0.038),
          Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0C303030),
                  blurRadius: 16,
                  offset: Offset(0, 8),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      optionBox('assets/Financial.png', 'Financial', 'Fraud',
                          0.15, context, home(), 4.0),
                      optionBox('assets/Data.png', 'Data Breach &',
                          'Identity theft', 0.15, context, home(), 4.0),
                      optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
                          context, home(), 1.0),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      optionBox('assets/digital.png', 'Women/child', '', 0.15,
                          context, home(), 4.0),
                      optionBox('assets/Social.png', 'Social Media', 'Crimes',
                          0.15, context, home(), 4.0),
                      optionBox('assets/emerging.png', 'Emerging', 'Threats',
                          0.15, context, home(), 4.0),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.038),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: 'Latest Scam Trends',
                    fontStyle: null,
                    color: Color(0xFF00184A),
                    fontSize: 16),
                CustomText(
                  text: 'See All',
                  fontStyle: null,
                  color: Color(0xFF245BC9),
                  fontSize: 12,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  newsBox(
                      'assets/info1.png',
                      '"Deepfakes":The Scary New Scam Using Artificial Intelligence',
                      0.28,
                      0.7,
                      0.18,
                      context,
                      home()),
                  newsBox(
                      'assets/info1.png',
                      '"Deepfakes":The Scary New Scam Using Artificial Intelligence',
                      0.28,
                      0.7,
                      0.18,
                      context,
                      home()),
                  newsBox(
                      'assets/info1.png',
                      '"Deepfakes":The Scary New Scam Using Artificial Intelligence',
                      0.28,
                      0.7,
                      0.18,
                      context,
                      trendsPage()),
                ]),
          )
        ],
      ),
    );
  }
}
