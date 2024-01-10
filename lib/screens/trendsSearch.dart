// import 'package:cyber_secure/screens/utilities.dart';
// import 'package:flutter/material.dart';

// class trendsSearchPage extends StatefulWidget {
//   const trendsSearchPage({super.key});

//   @override
//   State<trendsSearchPage> createState() => _trendsSearchPage();
// }

// class _trendsSearchPage extends State<trendsSearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [buildheading(context)],
//     ));
//   }

//   Widget buildheading(BuildContext context) {
//     bool isExpanded = false;
//     String selectedValue = 'Select option';
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     //list that will be expanded
//     List<String> politicsList = [
//       'Left Wing',
//       'Liberal',
//       'Moderate',
//       'Conservative',
//       'Libertarian',
//       'Apolitical'
//     ];
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: screenHeight * 0.05,
//             ),
//             Container(
//               width: double.infinity,
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade300,
//                 borderRadius: BorderRadius.only(
//                   topLeft: const Radius.circular(5),
//                   topRight: const Radius.circular(5),
//                   bottomLeft: Radius.circular(isExpanded ? 0 : 5),
//                   bottomRight: Radius.circular(isExpanded ? 0 : 5),
//                 ),
//               ),
//               child: Center(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: InkWell(
//                       onTap: () {
//                         FocusScope.of(context).unfocus();
//                         isExpanded = !isExpanded;
//                         setState(() {});
//                       },
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                               child: Text(selectedValue,
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .headline5!
//                                       .copyWith(fontSize: 16))),
//                           Icon(
//                             isExpanded
//                                 ? Icons.keyboard_arrow_up
//                                 : Icons.keyboard_arrow_down,
//                             color: isExpanded ? Colors.red : Colors.blue,
//                           )
//                         ],
//                       )),
//                 ),
//               ),
//             ),
//             if (isExpanded)
//               ListView(
//                 // shrinkWrap: true,
//                 // physics: NeverScrollableScrollPhysics(),
//                 children: politicsList
//                     .map((e) => InkWell(
//                           onTap: () {
//                             isExpanded = false;
//                             selectedValue = e;
//                             setState(() {});
//                           },
//                           child: Container(
//                               height: 40,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 color: selectedValue == e
//                                     ? Colors.pink
//                                     : Colors.grey.shade300,
//                               ),
//                               child: Center(
//                                   child: Text(
//                                 e.toString(),
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .headline2!
//                                     .copyWith(
//                                         fontSize: 14,
//                                         color: selectedValue == e
//                                             ? Colors.black
//                                             : Colors.blue),
//                               ))),
//                         ))
//                     .toList(),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }
//   //   final screenHeight = MediaQuery.of(context).size.height;
//   //   final screenWidth = MediaQuery.of(context).size.width;
//   //   bool isOpen = false;
//   //   String selectOption = 'Select Option';
//   //   List<String> policitis = [
//   //     'Account Takeover',
//   //     'Investment Scams',
//   //     'Loan Scams',
//   //     'Tax Scams',
//   //     'Malicious Phishing',
//   //     'Ransomware',
//   //     'Dark Web Marketplaces',
//   //     'Data Leaks',
//   //     'Blackmail and Extortion',
//   //     'Fake Initial Coin Offerings',
//   //     'Catfishing',
//   //     'Deepfakes',
//   //     'Tech Support Scams'
//   //   ];
//   //   return Padding(
//   //     padding: const EdgeInsets.all(8.0),
//   //     child: Column(
//   //       crossAxisAlignment: CrossAxisAlignment.start,
//   //       children: [
//   //         InkWell(
//   //           onTap: () {
//   //             isOpen = !isOpen;
//   //             setState(() {});
//   //           },
//   //           child: Container(
//   //               child: Row(
//   //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //             children: [
//   //               Container(
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(5),
//   //                     border: Border.all(width: 1, color: Colors.black),
//   //                   ),
//   //                   child: SizedBox(
//   //                     width: screenWidth * 0.9,
//   //                     child: Padding(
//   //                       padding: const EdgeInsets.only(left: 8.0),
//   //                       child: Row(children: [
//   //                         Image.asset(
//   //                           'assets/search.png',
//   //                           height: screenHeight * 0.032,
//   //                         ),
//   //                         SizedBox(
//   //                           width: screenWidth * 0.7,
//   //                           child: TextFormField(
//   //                             obscureText: false,
//   //                             style: const TextStyle(color: Colors.black),
//   //                             validator: (value) {
//   //                               if (value == null || value.isEmpty) {
//   //                                 return 'Please enter a valid value';
//   //                               }
//   //                               return null;
//   //                             },
//   //                             decoration: InputDecoration(
//   //                               fillColor: Color.fromARGB(0, 45, 76, 130),
//   //                               filled: true,
//   //                               hintText: 'Search Your Fraud Case',
//   //                               hintStyle:
//   //                                   const TextStyle(color: Color(0x4C172A48)),
//   //                             ),
//   //                           ),
//   //                         ),
//   //                         Image.asset(
//   //                           'assets/filter.png',
//   //                           height: screenHeight * 0.032,
//   //                         ),
//   //                       ]),
//   //                     ),
//   //                   ))
//   //             ],
//   //           )),
//   //         ),
//   //         // searchBar(context, 'Search Your Fraud Case', false),
//   //         if (isOpen)
//   //           ListView(
//   //             primary: true,
//   //             shrinkWrap: true,
//   //             children: policitis
//   //                 .map((e) => Container(
//   //                       child: Padding(
//   //                         padding: const EdgeInsets.all(8.0),
//   //                         child: InkWell(
//   //                             onTap: () {
//   //                               selectOption = e;
//   //                               isOpen = false;
//   //                               setState(() {});
//   //                             },
//   //                             child: Text(e)),
//   //                       ),
//   //                     ))
//   //                 .toList(),
//   //           )
//   //         // Padding(
//   //         //   padding: const EdgeInsets.only(left: 17.0, top: 12.0),
//   //         //   child: CustomText(
//   //         //     text: 'Suggestion',
//   //         //     fontStyle: null,
//   //         //     color: Color(0xFF00184A),
//   //         //     fontSize: 16,
//   //         //   ),
//   //         // ),
//   //       ],
//   //     ),
//   //   );
//   // }

import 'package:cyber_secure/modules/categories_new_model.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/view/view_model/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  bool isExpanded = false;

  NewsViewModel newsViewModel = NewsViewModel();
  // final format = DateFormat('MMMM dd, yyyy');

  String selectedValue = 'Select option';

  //list that will be expanded
  List<String> politicsList = [
    'Account Takeover',
    'Investment Scams',
    'Loan Scams',
    'Tax Scams',
    'Malicious Phishing',
    'Ransomeware',
    'Dark Web Marketplaces',
    'Data Leaks',
    'Blackmail and Extoration',
    'Fake Intial Coin Offerings(ICOs)',
    'Catfishing',
    'Deepfakes',
    'Tech Support Scams',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          // title: Text(''),
          ),
      body: Column(
        children: [
          Container(
            // height: screenHeight * 0.5,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(5),
                          topRight: const Radius.circular(5),
                          bottomLeft: Radius.circular(isExpanded ? 0 : 5),
                          bottomRight: Radius.circular(isExpanded ? 0 : 5),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: InkWell(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                isExpanded = !isExpanded;
                                setState(() {});
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Text(selectedValue,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(fontSize: 16))),
                                  Icon(
                                    isExpanded
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: isExpanded
                                        ? Color.fromARGB(255, 54, 73, 244)
                                        : Colors.blue,
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                    if (isExpanded)
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: politicsList
                            .map((e) => InkWell(
                                  onTap: () {
                                    isExpanded = false;
                                    selectedValue = e;
                                    setState(() {});
                                  },
                                  child: Container(
                                      height: 40,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: selectedValue == e
                                            ? Color.fromARGB(75, 114, 104, 108)
                                            : Colors.grey.shade300,
                                      ),
                                      child: Center(
                                          child: Text(
                                        e.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                                fontSize: 14,
                                                color: selectedValue == e
                                                    ? Colors.black
                                                    : Color.fromARGB(
                                                        110, 0, 0, 0)),
                                      ))),
                                ))
                            .toList(),
                      ),
                    // Expanded(
                    //   child: FutureBuilder<CategoriesNewsModel>(
                    //       future: newsViewModel.fetchCategoriesNewsApi(selectedValue),
                    //       builder: (BuildContext context, snapshot) {
                    //         if (snapshot.connectionState == ConnectionState.waiting) {
                    //           return Center(
                    //             child: SpinKitCircle(
                    //               size: 50,
                    //               color: Colors.blue,
                    //             ),
                    //           );
                    //         } else {
                    //           return ListView.builder(
                    //               itemCount: snapshot.data!.articles!.length,
                    //               itemBuilder: (context, index) {
                    //                 DateTime dateTime = DateTime.parse(snapshot
                    //                     .data!.articles![index].publishedAt
                    //                     .toString());
                    //                 return SizedBox();
                    //               });
                    //         }
                    //       }),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<CategoriesNewsModel>(
                future: newsViewModel.fetchCategoriesNewsApi(selectedValue),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: SpinKitCircle(
                        size: 50,
                        color: Colors.blue,
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.articles!.length,
                        itemBuilder: (context, index) {
                          DateTime dateTime = DateTime.parse(snapshot
                              .data!.articles![index].publishedAt
                              .toString());
                          return newsBox2(
                            snapshot,
                            index,
                            '',
                            0.329,
                            0.9,
                            context,
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}
