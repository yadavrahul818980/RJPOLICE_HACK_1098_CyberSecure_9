// // import 'package:flutter/material.dart';

// // // // class ScrollableContainer extends StatefulWidget {
// // // //   @override
// // // //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // // // }

// // // // class _ScrollableContainerState extends State<ScrollableContainer> {
// // // //   PageController _pageController = PageController();
// // // //   int _currentPage = 0;

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Container(
// // // //       decoration: ShapeDecoration(
// // // //         color: Colors.white,
// // // //         shape: RoundedRectangleBorder(
// // // //           borderRadius: BorderRadius.circular(10),
// // // //         ),
// // // //         shadows: [
// // // //           BoxShadow(
// // // //             color: Color(0x0C303030),
// // // //             blurRadius: 16,
// // // //             offset: Offset(0, 8),
// // // //             spreadRadius: 0,
// // // //           )
// // // //         ],
// // // //       ),
// // // //       child: Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.center,
// // // //         children: [
// // // //           SizedBox(height: 10),
// // // //           Container(
// // // //             height: 200, // Adjust the height as needed
// // // //             child: PageView(
// // // //               controller: _pageController,
// // // //               onPageChanged: (int page) {
// // // //                 setState(() {
// // // //                   _currentPage = page;
// // // //                 });
// // // //               },
// // // //               children: [
// // // //                 SingleChildScrollView(
// // // //                   scrollDirection: Axis.horizontal,
// // // //                   child: Row(
// // // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // //                     children: [
// // // //                       optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
// // // //                           context, null, 4.0),
// // // //                       optionBox('assets/Financial.png', 'Financial Fraud', '',
// // // //                           0.15, context, null, 4.0),
// // // //                       optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
// // // //                           context, null, 1.0),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //                 SingleChildScrollView(
// // // //                   scrollDirection: Axis.horizontal,
// // // //                   child: Row(
// // // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // //                     children: [
// // // //                       optionBox('assets/digital.png', 'Women/child', '', 0.15,
// // // //                           context, null, 4.0),
// // // //                       optionBox('assets/Social.png', 'Social Media', 'Crimes',
// // // //                           0.15, context, null, 4.0),
// // // //                       optionBox('assets/emerging.png', 'Emerging', 'Threats',
// // // //                           0.15, context, null, 4.0),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: 10),
// // // //           buildDots(),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget buildDots() {
// // // //     return Row(
// // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // //       children: List<Widget>.generate(2, (int index) {
// // // //         return Padding(
// // // //           padding: const EdgeInsets.all(8.0),
// // // //           child: Container(
// // // //             width: 10,
// // // //             height: 20,
// // // //             decoration: BoxDecoration(
// // // //               shape: BoxShape.circle,
// // // //               color: index == _currentPage ? Colors.blue : Color.fromARGB(255, 0, 0, 0),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       }),
// // // //     );
// // // //   }

// // // //   Widget optionBox(String imagePath, String title, String subtitle,
// // // //       double height, BuildContext context, dynamic route, double width) {
// // // //     return Container(
// // // //       height: height * MediaQuery.of(context).size.height,
// // // //       width: width * MediaQuery.of(context).size.width,
// // // //       child: Column(
// // // //         children: [
// // // //           Image.asset(
// // // //             imagePath,
// // // //             height: 20.0,
// // // //           ),
// // // //           SizedBox(height: 10.0),
// // // //           Text(
// // // //             title,
// // // //             style: TextStyle(
// // // //               fontSize: 16.0,
// // // //               fontWeight: FontWeight.bold,
// // // //             ),
// // // //           ),
// // // //           Text(subtitle),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class ScrollableContainer extends StatefulWidget {
// // //   @override
// // //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // // }

// // // class _ScrollableContainerState extends State<ScrollableContainer> {
// // //   PageController _pageController = PageController();
// // //   int _currentPage = 0;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       decoration: ShapeDecoration(
// // //         color: Colors.white,
// // //         shape: RoundedRectangleBorder(
// // //           borderRadius: BorderRadius.circular(10),
// // //         ),
// // //         shadows: [
// // //           BoxShadow(
// // //             color: Color(0x0C303030),
// // //             blurRadius: 16,
// // //             offset: Offset(0, 8),
// // //             spreadRadius: 0,
// // //           )
// // //         ],
// // //       ),
// // //       child: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.center,
// // //         children: [
// // //           SizedBox(height: 10),
// // //           Container(
// // //             height: 200, // Adjust the height as needed
// // //             child: PageView(
// // //               controller: _pageController,
// // //               onPageChanged: (int page) {
// // //                 setState(() {
// // //                   _currentPage = page;
// // //                 });
// // //               },
// // //               children: [
// // //                 SingleChildScrollView(
// // //                   scrollDirection: Axis.horizontal,
// // //                   child: Row(
// // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                     children: [
// // //                       optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
// // //                           context, null, 4.0),
// // //                       optionBox('assets/Financial.png', 'Financial Fraud', '',
// // //                           0.15, context, null, 4.0),
// // //                       optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
// // //                           context, null, 1.0),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 SingleChildScrollView(
// // //                   scrollDirection: Axis.horizontal,
// // //                   child: Row(
// // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                     children: [
// // //                       optionBox('assets/digital.png', 'Women/child', '', 0.15,
// // //                           context, null, 4.0),
// // //                       optionBox('assets/Social.png', 'Social Media', 'Crimes',
// // //                           0.15, context, null, 4.0),
// // //                       optionBox('assets/emerging.png', 'Emerging', 'Threats',
// // //                           0.15, context, null, 4.0),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           SizedBox(height: 10),
// // //           buildDots(),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget buildDots() {
// // //     return Row(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: List<Widget>.generate(2, (int index) {
// // //         return Padding(
// // //           padding: const EdgeInsets.all(8.0),
// // //           child: Container(
// // //             width: 10,
// // //             height: 20,
// // //             decoration: BoxDecoration(
// // //               shape: BoxShape.circle,
// // //               color: index == _currentPage ? Colors.blue : Color.fromARGB(255, 0, 0, 0),
// // //             ),
// // //           ),
// // //         );
// // //       }),
// // //     );
// // //   }

// // //   Widget optionBox(String imagePath, String title, String subtitle,
// // //       double height, BuildContext context, dynamic route, double width) {
// // //     return Container(
// // //       height: height * MediaQuery.of(context).size.height,
// // //       width: width * MediaQuery.of(context).size.width,
// // //       child: Column(
// // //         children: [
// // //           Image.asset(
// // //             imagePath,
// // //             height: 20.0,
// // //           ),
// // //           SizedBox(height: 10.0),
// // //           Text(
// // //             title,
// // //             style: TextStyle(
// // //               fontSize: 16.0,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           Text(subtitle),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class ScrollableContainer extends StatefulWidget {
// //   @override
// //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // }

// // class _ScrollableContainerState extends State<ScrollableContainer> {
// //   PageController _pageController = PageController();
// //   int _currentPage = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         buildTabs(context),
// //         SizedBox(height: 10),
// //         Container(
// //           height: 200,
// //           child: PageView(
// //             controller: _pageController,
// //             onPageChanged: (int page) {
// //               setState(() {
// //                 _currentPage = page;
// //               });
// //             },
// //             children: [
// //               buildOptionContainer(context, [
// //                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15,
// //                     context, '', 4.0),
// //                 optionBox('assets/Financial.png', 'Financial Fraud', '',
// //                     0.15, context, '', 4.0),
// //                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15,
// //                     context, '', 1.0),
// //               ]),
// //               buildOptionContainer(context, [
// //                 optionBox('assets/digital.png', 'Women/child', '', 0.15,
// //                     context, '', 4.0),
// //                 optionBox('assets/Social.png', 'Social Media', 'Crimes',
// //                     0.15, context, '', 4.0),
// //                 optionBox('assets/emerging.png', 'Emerging', 'Threats',
// //                     0.15, context, '', 4.0),
// //               ]),
// //             ],
// //           ),
// //         ),
// //         SizedBox(height: 10),
// //         buildDots(),
// //       ],
// //     );
// //   }

// //   Widget buildTabs(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //       children: [
// //         buildTab('Tab 1', 0),
// //         buildTab('Tab 2', 1),
// //         buildTab('Tab 3', 2),
// //       ],
// //     );
// //   }

// //   Widget buildTab(String title, int index) {
// //     return GestureDetector(
// //       onTap: () {
// //         _pageController.animateToPage(index,
// //             duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
// //       },
// //       child: Container(
// //         padding: EdgeInsets.symmetric(vertical: 10),
// //         decoration: BoxDecoration(
// //           color: index == _currentPage ? Colors.blue : Colors.transparent,
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Text(
// //           title,
// //           style: TextStyle(
// //             color: Colors.black,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget buildOptionContainer(BuildContext context, List<Widget> children) {
// //     return Container(
// //       decoration: ShapeDecoration(
// //         color: Colors.white,
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         shadows: [
// //           BoxShadow(
// //             color: Color(0x0C303030),
// //             blurRadius: 16,
// //             offset: Offset(0, 8),
// //             spreadRadius: 0,
// //           )
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: children,
// //       ),
// //     );
// //   }

// //   Widget buildDots() {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: List<Widget>.generate(2, (int index) {
// //         return Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             width: 10,
// //             height: 20,
// //             decoration: BoxDecoration(
// //               shape: BoxShape.circle,
// //               color: index == _currentPage ? Colors.blue : Colors.black,
// //             ),
// //           ),
// //         );
// //       }),
// //     );
// //   }

// //   Widget optionBox(String imagePath, String title, String subtitle,
// //       double height, BuildContext context, dynamic route, double width) {
// //     return Container(
// //       height: height * MediaQuery.of(context).size.height,
// //       width: width * MediaQuery.of(context).size.width,
// //       child: Column(
// //         children: [
// //           Image.asset(
// //             imagePath,
// //             height: 20.0,
// //           ),
// //           SizedBox(height: 10.0),
// //           Text(
// //             title,
// //             style: TextStyle(
// //               fontSize: 16.0,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           Text(subtitle),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class ScrollableContainer extends StatefulWidget {
// //   @override
// //   _ScrollableContainerState createState() => _ScrollableContainerState();
// // }

// // class _ScrollableContainerState extends State<ScrollableContainer> {
// //   PageController _pageController = PageController();
// //   int _currentPage = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         buildTabs(context),
// //         SizedBox(height: 10),
// //         Container(
// //           height: 400,
// //           child: PageView(
// //             controller: _pageController,
// //             onPageChanged: (int page) {
// //               setState(() {
// //                 _currentPage = page;
// //               });
// //             },
// //             children: [
// //               buildOptionContainer(context, [
// //                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
// //                     '', 4.0),
// //                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
// //                     context, '', 4.0),
// //                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
// //                     '', 1.0),
// //               ]),
// //               buildOptionContainer(context, [
// //                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
// //                     '', 4.0),
// //                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
// //                     context, '', 4.0),
// //                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
// //                     '', 1.0),
// //               ]),
// //               buildOptionContainer(context, [
// //                 optionBox('assets/Data.png', 'Data', 'Breach', 0.15, context,
// //                     '', 4.0),
// //                 optionBox('assets/Financial.png', 'Financial Fraud', '', 0.15,
// //                     context, '', 4.0),
// //                 optionBox('assets/medal.png', 'Crypto', 'Scams', 0.15, context,
// //                     '', 1.0),
// //               ]),
// //             ],
// //           ),
// //         ),
// //         SizedBox(height: 10),
// //         buildDots(),
// //       ],
// //     );
// //   }

// //   Widget buildTabs(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //       children: [
// //         buildTab(0),
// //         buildTab(1),
// //         buildTab(2),
// //       ],
// //     );
// //   }

// //   Widget buildTab(int index) {
// //     return GestureDetector(
// //       onTap: () {
// //         _pageController.animateToPage(index,
// //             duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
// //       },
// //       child: Container(
// //         padding: EdgeInsets.symmetric(vertical: 10),
// //         decoration: BoxDecoration(
// //           color: index == _currentPage ? Colors.blue : Colors.transparent,
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget buildOptionContainer(BuildContext context, List<Widget> children) {
// //     return Container(
// //       decoration: ShapeDecoration(
// //         color: Colors.white,
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         shadows: [
// //           BoxShadow(
// //             color: Color(0x0C303030),
// //             blurRadius: 16,
// //             offset: Offset(0, 8),
// //             spreadRadius: 0,
// //           )
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: children,
// //       ),
// //     );
// //   }

// //   Widget buildDots() {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: List<Widget>.generate(3, (int index) {
// //         return Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             width: 10,
// //             height: 20,
// //             decoration: BoxDecoration(
// //               shape: BoxShape.circle,
// //               color: index == _currentPage ? Colors.blue : Colors.black,
// //             ),
// //           ),
// //         );
// //       }),
// //     );
// //   }

// //   Widget optionBox(String imagePath, String title, String subtitle,
// //       double height, BuildContext context, dynamic route, double width) {
// //     return Container(
// //       height: height * MediaQuery.of(context).size.height,
// //       width: width * MediaQuery.of(context).size.width,
// //       child: Column(
// //         children: [
// //           Image.asset(
// //             imagePath,
// //             height: 20.0,
// //           ),
// //           SizedBox(height: 10.0),
// //           Text(
// //             title,
// //             style: TextStyle(
// //               fontSize: 16.0,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           Text(subtitle),
// //         ],
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';

// // import 'package:cyber_secure/modules/categories_fraud_trends.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;

// // class ApiManager {
// //   static const String apiUrl = 'https://cyber-secure.onrender.com/v1/cyberCrimeCategories';

// //   Future<categorieFraudTrends?> fetchData(String category) async {
// //     try {
// //       final response = await http.get(
// //         Uri.parse('$apiUrl?category=$category'),
// //         headers: <String, String>{
// //           'Content-Type': 'application/json',
// //         },
// //       );

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> jsonData = jsonDecode(response.body);
// //         return categorieFraudTrends.fromJson(jsonData);
// //       } else {
// //         print('Failed to load data. Status Code: ${response.statusCode}');
// //         return null;
// //       }
// //     } catch (e) {
// //       print('Error during API call: $e');
// //       return null;
// //     }
// //   }
// // }






// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   ApiManager apiManager = ApiManager();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('API Example'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             ElevatedButton(
// //               onPressed: () {
// //                 fetchDataExample();
// //               },
// //               child: Text('Fetch Data'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void fetchDataExample() async {
// //     String category = "Loan Fraud"; // Replace with the actual category
// //     categorieFraudTrends? data = await apiManager.fetchData(category);

// //     if (data != null) {
// //       // Access the data fields
// //       print('Category: ${data.crime?.category}');
// //       print('Description: ${data.crime?.description}');
// //       print('YouTube Video URL: ${data.crime?.youtubeVideoUrl}');
// //       print('Protection: ${data.crime?.protection}');
// //     } else {
// //       print('Failed to fetch data.');
// //     }
// //   }
// // }


// import 'package:cyber_secure/screens/Utilities.dart';
// import 'package:cyber_secure/screens/navbar.dart';
// import 'package:flutter/material.dart';

// class Language extends StatefulWidget {
//   const Language({Key? key}) : super(key: key);

//   @override
//   _LanguageState createState() => _LanguageState();
// }

// class _LanguageState extends State<Language> {
//   String selectedLanguage = '';

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/background.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Scaffold(
//           backgroundColor: Colors.transparent,
//           body: ListView(
//             children: [buildheading(context)],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget buildheading(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(height: screenHeight * 0.1),
//         const CustomText(
//           text: "Choose Language",
//           color: const Color(0xFF245BC9),
//           fontSize: 24,
//           fontStyle: null,
//           fontfamily: '',
//         ),
//         SizedBox(height: screenHeight * 0.02),
//         const CustomText1(
//           text: "भाषा चुनिए",
//           color: Color(0xFF245BC9),
//           fontSize: 24,
//           fontStyle: null,
//           fontfamily: 'Poppins',
//         ),
//         SizedBox(height: screenHeight * 0.04),
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomButton(
//                 text1: 'Hindi - हिंदी',
//                 text2: 'ए',
//                 text3: 'hi',
//                 text4: 'IN',
//                 isSelected: selectedLanguage == 'hi',
//                 onTap: () => onLanguageSelected('hi'),
//               ),
//               CustomButton(
//                 text1: 'Marathi - मराठी',
//                 text2: 'ஏ',
//                 text3: 'mr',
//                 text4: 'IN',
//                 isSelected: selectedLanguage == 'mr',
//                 onTap: () => onLanguageSelected('mr'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: screenHeight * 0.06),
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomButton(
//                 text1: 'English- English',
//                 text2: 'A',
//                 text3: 'en',
//                 text4: 'US',
//                 isSelected: selectedLanguage == 'en',
//                 onTap: () => onLanguageSelected('en'),
//               ),
//               CustomButton(
//                 text1: 'kannada-தமிழ்',
//                 text2: 'ஏ',
//                 text3: '',
//                 text4: '',
//                 isSelected: selectedLanguage == 'kn',
//                 onTap: () => onLanguageSelected('kn'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: screenHeight * 0.06),
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               CustomButton(
//                 text1: 'Telugu - తెలుగు',
//                 text2: 'ఆ',
//                 text3: 'te',
//                 text4: 'IN',
//                 isSelected: selectedLanguage == 'te',
//                 onTap: () => onLanguageSelected('te'),
//               ),
//               CustomButton(
//                 text1: 'Tamil - தமிழ்',
//                 text2: 'ஏ',
//                 text3: 'ta',
//                 text4: 'IN',
//                 isSelected: selectedLanguage == 'ta',
//                 onTap: () => onLanguageSelected('ta'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: screenHeight * 0.04),
//         button3("Sign In", 40.0, 320.0, context, navigateTo: () => navigateToPage(context, const NavBar()))
//       ],
//     );
//   }
// // language ke liye
//   void onLanguageSelected(String language) {
//     setState(() {
//       selectedLanguage = language;
//     });
//   }
// // yeh function navigation ke liye add kar dena utilies mein hi 
//   void navigateToPage(BuildContext context, Widget page) {
//     if (selectedLanguage.isNotEmpty) {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => page));
//     }
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String text1;
//   final String text2;
//   final String text3;
//   final String text4;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const CustomButton({
//     Key? key,
//     required this.text1,
//     required this.text2,
//     required this.text3,
//     required this.text4,
//     required this.isSelected,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(6)),
//           border: Border.all(
//             color: Color(0xFF245BC9),
//             width: 2.0,
//           ),
//           color: isSelected ? Colors.blue : Colors.transparent,
//         ),
//         height: screenHeight * 0.15,
//         width: screenWidth * 0.3,
//         child: Column(
//           children: [
//             SizedBox(height: screenHeight * 0.01),
//             Text(
//               text1,
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Color(0xFF245BC9),
//                 fontSize: 14,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             Text(
//               text2,
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Color(0xFF245BC9),
//                 fontSize: 40,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w500,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// // button-3 updated
// Widget button3(String text, double height, double width, BuildContext context,
//     {VoidCallback? navigateTo}) {
//   return GestureDetector(
//     onTap: navigateTo,
//     child: Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment(0.00, -1.00),
//           end: Alignment(0, 1),
//           colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(7)),
//         boxShadow: [
//           BoxShadow(),
//         ],
//       ),
//       height: height,
//       width: width,
//       child: Padding(
//         padding: const EdgeInsets.all(7.0),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// // isme kiya kya hai
// // get remove kar diya - since usko ya toh fir har jagah throughout the project use karo taki app build mein bhi getmaterialapp use kar sako otherwise atak raha hai 
// // ek language select karne ka option hai .. phele multiple languages select ho rahi thi kis ki wajah se hinderance tha
// // navigate karne ka function sahi nhi tha .. wo dusra issue tha 
// // button3("Koiaurtext", 40.0, 320.0, context, navigateTo: () => navigateToPage(context, KoibhiPage()));
// // yeh mere liye sahi function kar raha hai ek baar tum try karo..mere laptop mein issue hai shyd isliye app apk build nhi ho raha hai properly isliye tum apk build kar ke dekho