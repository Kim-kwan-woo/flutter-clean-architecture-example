import 'package:flutter_clean_architecture/src/features/main/data/datasource/remote_data_source.dart/feed_data_source.dart';
import 'package:flutter_clean_architecture/src/features/main/data/model/post.dart';
import 'package:flutter_clean_architecture/src/features/main/data/model/story.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/post_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/repository/feed_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_repository_impl.g.dart';

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl({required FeedDataSource source}) : _source = source;

  final FeedDataSource _source;

  @override
  Future<List<PostEntity>> fetchPosts() async {
    final list = await _source.fetchPosts();
    return list.map((element) => element.toEntity()).toList();
  }

  @override
  Future<List<StoryEntity>> fetchStories() async {
    final list = await _source.fetchStories();
    return list.map((element) => element.toEntity()).toList();
  }
}

@riverpod
FeedRepository feedRepository(FeedRepositoryRef ref) {
  final source = ref.watch(feedDataSourceProvider);
  return FeedRepositoryImpl(source: source);
}
