

  import '../../model/news_channel_headline_model.dart';
  import '../../repository/news_repository/news_repository.dart';

  class NewsViewModel{
    final _rep = NewsRepository();

    Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi() async {
      final response = await _rep.fetchNewsChannelHeadlinesApi();
      return response;

    }
  }