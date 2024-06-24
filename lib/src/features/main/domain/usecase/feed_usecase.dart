import 'package:flutter_clean_architecture/src/features/main/data/repository/remote_repository/feed_repository_impl.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/post_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_usecase.g.dart';

@riverpod
Future<List<PostEntity>> fetchPosts(FetchPostsRef ref) async {
  final repository = ref.watch(feedRepositoryProvider);
  return await repository.fetchPosts();
}

@riverpod
Future<List<StoryEntity>> fetchStories(FetchStoriesRef ref) async {
  final repository = ref.watch(feedRepositoryProvider);
  return await repository.fetchStories();
}
