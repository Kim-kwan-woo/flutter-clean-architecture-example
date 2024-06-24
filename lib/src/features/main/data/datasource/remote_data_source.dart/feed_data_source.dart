import 'dart:convert';

import 'package:flutter_clean_architecture/src/features/main/data/model/post.dart';
import 'package:flutter_clean_architecture/src/features/main/data/model/story.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_data_source.g.dart';

abstract class FeedDataSource {
  Future<List<Post>> fetchPosts();

  Future<List<Story>> fetchStories();
}

class FeedDataSourceImpl implements FeedDataSource {
  @override
  Future<List<Post>> fetchPosts() async {
    final url = Uri.https('www.lge.co.kr',
        'mkt/api/bestRanking/retrieveCategoryProductList.lgajax');
    final response = await http.post(url, body: {
      'rankingType': 'todays',
      'categoryId': '',
      'filterId': '',
      'categoryIds':
          'CT50000131,CT50000143,CT50000142,CT50000139,CT50000025,CT50000065,CT50000072,CT50073000,CT50115000,CT50000086,CT50019018,CT50000076,CT50000094,CT50000110,CT50250001,CT50000107,CT50000106,CT50000101,CT50000111,CT50000046,CT50000055,CT50000032,CT50000036,',
      'keyword': '',
    });
    final data = jsonDecode(response.body);
    final rawBestRankingProductList = List<Map<String, dynamic>>.from(
        data['data'][0]['bestRankingProductList']);
    final postList =
        List<Post>.from(rawBestRankingProductList.map((e) => Post.fromMap(e)));
    return postList;
  }

  @override
  Future<List<Story>> fetchStories() async {
    final url = Uri.https('www.lge.co.kr', 'retrieveStoryList.lgajax', {
      'page': '1',
      'type': 'NewStory',
    });
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final rawStoryList =
        List<Map<String, dynamic>>.from(data['data']['storyList']);
    final storyList =
        List<Story>.from(rawStoryList.map((e) => Story.fromMap(e)));
    return storyList;
  }
}

@riverpod
FeedDataSource feedDataSource(FeedDataSourceRef ref) {
  return FeedDataSourceImpl();
}
