import 'package:flutter_clean_architecture/src/features/main/domain/entity/post_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/usecase/feed_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_provider.g.dart';

@riverpod
Future<List<PostEntity>> posts(PostsRef ref) async {
  final posts = await ref.watch(fetchPostsProvider.future);
  return posts;
}

@riverpod
Future<List<StoryEntity>> stories(StoriesRef ref) async {
  final stories = await ref.watch(fetchStoriesProvider.future);
  return stories;
}
