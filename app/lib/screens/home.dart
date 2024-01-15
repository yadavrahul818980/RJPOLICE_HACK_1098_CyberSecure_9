import 'package:cyber_secure/modules/news_channels_headline_models.dart';
import 'package:cyber_secure/screens/cyberMitrBot.dart';
import 'package:cyber_secure/screens/databreach.dart';
import 'package:cyber_secure/screens/financilaFraud.dart';
import 'package:cyber_secure/screens/profile.dart';
import 'package:cyber_secure/screens/trends.dart';
import 'package:cyber_secure/view/view_model/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cyber_secure/screens/chatmessage.dart';
import 'package:cyber_secure/screens/trendsSearch.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //

  PageController _pageController = PageController();
  int _currentPage = 0;

  String? name;
  String? email;

  Future<void> getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('token');

    if (accessToken != null) {
      Map<String, dynamic>? decodedToken = JwtDecoder.decode(accessToken);

      if (decodedToken != null) {
        print('accessToken: $accessToken');
        print('decoded toke : $decodedToken');
        setState(() {
          name = decodedToken['name'];
          email = decodedToken['email'];
        });
      }
    }
  }

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
            )),
        Positioned(
            bottom: 25.0,
            right: 25.0,
            child: buttonchat('assets/cybermitr1.png', context, cyberMitr()))
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    // final PageController _pageController = PageController(initialPage: 0);
    // int _currentPage = 0;
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
                // Image.asset(
                //   'assets/profil.png',
                //   height: screenHeight * 0.05,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/profil.png',
                    height: screenHeight * 0.05,
                  ),
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
            'Hi, $name',
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
          Column(
            children: [
              buildTabs(context),
              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.35,
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
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
                              // assets/Data.png

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox('assets/Data.png', 'Data ',
                                      'Breach', 0.15, context, 4.5),
                                  optionBox(
                                      'assets/Financial.png',
                                      'Financial Fraud',
                                      '',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox('assets/Crypto.png', 'Crypto ',
                                      'Scams', 0.15, context, 4.5),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox('assets/digital.png', 'Women/Child',
                                      '', 0.15, context, 4.5),
                                  optionBox(
                                      'assets/Social.png',
                                      'Social Media ',
                                      'Crimes',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox('assets/emerging.png', 'Insurance ',
                                      'Fraud', 0.15, context, 4.5),
                                ],
                              ),
                            ),
                            buildDots(),
                          ],
                        ),
                      ),
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
                              // assets/Data.png

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox('assets/JobFraud.png', 'job Fraud',
                                      '', 0.15, context, 4.5),
                                  optionBox(
                                      'assets/DenialOfServices.png',
                                      'Denial Of ',
                                      'Services',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox('assets/LoanFraud.png',
                                      'Loan Fraud', '', 0.15, context, 4.5),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox(
                                      'assets/Insurance.png',
                                      'Insurance ',
                                      'Fraud',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox(
                                      'assets/OnlineShopping.png',
                                      'Online ',
                                      'Shopping Fraud',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox(
                                      'assets/Lottery.png',
                                      'Lottery/Prize ',
                                      'Fraud',
                                      0.15,
                                      context,
                                      4.5),
                                ],
                              ),
                            ),
                            buildDots(),
                          ],
                        ),
                      ),
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
                              // assets/Data.png

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox('assets/Email.png', 'Email Hacking',
                                      '', 0.15, context, 4.5),
                                  optionBox('assets/SIM.png', 'SIM Swapping ',
                                      'Fraud', 0.15, context, 4.5),
                                  optionBox('assets/Customer.png', 'Customer',
                                      'Care Fraud', 0.15, context, 4.5),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  optionBox(
                                      'assets/OnlineShopping.png',
                                      'E-Commerce ',
                                      'Related Fraud',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox(
                                      'assets/Tower.png',
                                      'Tower Installation ',
                                      'Fraud',
                                      0.15,
                                      context,
                                      4.5),
                                  optionBox(
                                      'assets/Ransomware.png',
                                      'Ransomware ',
                                      'Attack',
                                      0.15,
                                      context,
                                      4.5),
                                ],
                              ),
                            ),
                            buildDots(),
                          ],
                        ),
                      ),
                    ]),
              ),
              // SizedBox(height: 2),
              // buildDots(),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                    text: 'Latest Scam Trends',
                    fontStyle: null,
                    color: Color(0xFF00184A),
                    fontSize: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomDropDownWidget()));
                  },
                  child: CustomText(
                    text: 'See All',
                    fontStyle: null,
                    color: Color(0xFF245BC9),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: screenHeight * 0.28,
              width: screenWidth,
              // child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              // height: screenHeight * 0.28,
              // width: screenWidth,
              child: FutureBuilder<NewsChannelsHeadlineModels>(
                  future: newsViewModel.fetchNewsChannelHeadlineApi(),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: SpinKitCircle(
                          color: Colors.blue,
                          size: 50,
                        ),
                      );
                    } else {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.articles!.length,
                          itemBuilder: (context, index) {
                            return newsBox(snapshot, index, '', 0.28, 0.7, 0.18,
                                context, null);
                          });
                    }
                  })),
          // Container(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       SizedBox(
          //         width: screenWidth * 0.6,
          //       ),
          //       buttonchat('assets/Chatbot.png', context, cyberMitr()),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

//
  Widget buildTabs(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildTab(0),
        buildTab(1),
        buildTab(2),
      ],
    );
  }

  Widget buildTab(int index) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(index,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: index == _currentPage ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(3, (int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == _currentPage ? Colors.blue : Colors.black,
            ),
          ),
        );
      }),
    );
  }
}
