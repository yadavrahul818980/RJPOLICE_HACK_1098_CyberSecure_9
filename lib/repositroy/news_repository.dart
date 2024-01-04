import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:cyber_secure/modules/news_channels_headline_model.dart';
import 'package:cyber_secure/modules/news_channels_headline_models.dart';

class NewsRepository {
  Future<NewsChannelsHeadlineModels> fetchNewsChannelHeadlineApi() async {
    String url = 'https://cyber-secure.onrender.com/v1/cyberTrends';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlineModels.fromJson(body);
    }
    throw Exception('Error');
  }
}
