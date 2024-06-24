import 'package:flutter_clean_architecture/src/features/main/domain/entity/post_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';

abstract class FeedRepository {
  Future<List<PostEntity>> fetchPosts();

  Future<List<StoryEntity>> fetchStories();
}
