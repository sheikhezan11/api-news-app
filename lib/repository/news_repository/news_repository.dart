import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_channel_headline_model.dart';

class NewsRepository {


  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi()async{
    String url = 'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=8fa59f9106a94b30a5225f186fa35288';

    final response = await http.get(Uri.parse(url));

    if (kDebugMode) {
      print(response.body);
    }

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    } throw Exception('Error');
  }
}
