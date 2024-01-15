import 'package:cyber_secure/modules/categories_new_model.dart';
import 'package:cyber_secure/screens/complaint.dart';
import 'package:cyber_secure/screens/feed.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/view/view_model/news_view_model.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:cyber_secure/modules/categories_fraud_trends.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cyber_secure/repositroy/databreach_repositry.dart';

class databreach extends StatefulWidget {
  final String breach;
  const databreach({Key? key, required this.breach}) : super(key: key);

  @override
  State<databreach> createState() => _databreachState();
}

class _databreachState extends State<databreach> {
  ApiManager apiManager = ApiManager();
  NewsViewModel newsViewModel = NewsViewModel();
  String Heading = '';
  String description = '';
  String youtube = '';
  String Protection = '';
  // final format = DateFormat('MMMM dd, yyyy');
  @override
  void initState() {
    super.initState();
    // Call fetchDataExample when the screen is created
    fetchDataExample();
  }

  Future<void> fetchDataExample() async {
    String category = widget.breach; // Replace with the actual category
    categorieFraudTrends? data = await apiManager.fetchData(category);

    if (data != null) {
      // Access the data fields
      setState(() {
        Heading = '${data.crime?.category}';
        description = '${data.crime?.description}';
        youtube = '${data.crime?.youtubeVideoUrl}';
        Protection = '${data.crime?.protection}';
        print(Heading);
        print(description);
        print(youtube);
        print(Protection);
      });
      // Heading = '${data.crime?.category}';
      // description = '${data.crime?.description}';
      // youtube = '${data.crime?.youtubeVideoUrl}';
      // Protection = '${data.crime?.protection}';
      // print(Heading);
      // print(description);
      // print(youtube);
      // print(Protection);

      // print('Category: ${data.crime?.category}');
      // print('Description: ${data.crime?.description}');
      // print('YouTube Video URL: ${data.crime?.youtubeVideoUrl}');
      // print('Protection: ${data.crime?.protection}');
    } else {
      print('Failed to fetch data.');
    }
  }

  String selectedValue = '';
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home()));
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Color(0xff00194A),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            Heading,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff00194A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sheight * 0.03,
                    ),
                    Center(
                      child: Text(
                        // 'In simple parlance, if any information or data which belongs to a person or organization gets stolen by methods of spoofing, phishing and malware attack, it can be identified as data theft. The data can also be stolen from website, computer, pen drive or email.'
                        description,

                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videoUrls.length,
              itemBuilder: (context, index) {
                final videoID = YoutubePlayer.convertUrlToId(youtube);

                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PLayerScreen(videoId: videoID)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          YoutubePlayer.getThumbnail(videoId: videoID!)),
                    ));
              },
            ),
          ),
          Expanded(
            child: FutureBuilder<CategoriesNewsModel>(
                future: newsViewModel.fetchCategoriesNewsApi(Heading),
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

  Widget thubmNail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        margin: const EdgeInsets.all(10),
        color: Colors.blue,
        child: const Center(
          child: Text("THUMBNAIL"),
        ),
      ),
    );
  }
}
