import 'package:cyber_secure/modules/news_channels_headline_models.dart';
import 'package:cyber_secure/repositroy/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlineModels> fetchNewsChannelHeadlineApi() async {
    final response = await _rep.fetchNewsChannelHeadlineApi();
    return response;
  }
}
