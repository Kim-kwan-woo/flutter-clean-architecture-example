import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/provider/history_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryPage extends ConsumerWidget {
  const StoryPage({super.key, required this.story});
  final StoryEntity story;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(historyProvider.notifier).addStoryHistory(story.storyId);
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://www.lge.co.kr${story.largeImage}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
