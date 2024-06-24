import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/provider/feed_provider.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/widget/story_circle.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryRail extends ConsumerWidget {
  const StoryRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double height = 128;
    return switch (ref.watch(storiesProvider)) {
      AsyncData(:final value) => Container(
          padding: const EdgeInsets.only(left: 8.0),
          height: height,
          child: ListView.separated(
            itemCount: value.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) =>
                StoryCircle(story: value[index], radius: height * 0.32),
            separatorBuilder: (_, __) => const SizedBox(width: 16),
          ),
        ),
      AsyncError(:final error) => Text('error: $error'),
      _ => const Text('loading'),
    };
  }
}
