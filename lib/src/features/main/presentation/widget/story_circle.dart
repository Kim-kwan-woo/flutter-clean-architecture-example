import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/story_entity.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/provider/history_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StoryCircle extends ConsumerWidget {
  const StoryCircle({super.key, required this.story, required this.radius});
  final StoryEntity story;
  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        context.push('/story/${story.storyId}', extra: {"story": story});
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: (ref
                        .watch(historyProvider)
                        .valueOrNull
                        ?.contains(story.storyId) ??
                    false)
                ? null
                : const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.yellow, Colors.pink],
                    ),
                  ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                radius: radius,
                backgroundImage:
                    NetworkImage('https://www.lge.co.kr/${story.smallImage}'),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(story.contentsName)
        ],
      ),
    );
  }
}
