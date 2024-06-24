import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/provider/feed_provider.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/widget/post_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostRail extends ConsumerWidget {
  const PostRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (ref.watch(postsProvider)) {
      AsyncData(:final value) => ListView.separated(
          // itemExtent: 0,
          padding: const EdgeInsets.all(0),
          itemCount: value.length,
          itemBuilder: (_, index) => PostCard(
            post: value[index],
          ),
          separatorBuilder: (_, __) => const SizedBox(
            height: 16,
          ),
        ),
      AsyncError(:final error) => Text(error.toString()),
      _ => const CircularProgressIndicator.adaptive(),
    };
  }
}
