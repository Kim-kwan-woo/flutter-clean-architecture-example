import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/widget/history_drawer.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/widget/post_rail.dart';
import 'package:flutter_clean_architecture/src/features/main/presentation/widget/story_rail.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HistoryDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          const SliverAppBar(
            centerTitle: false,
            title: Text('LstarGram'),
            backgroundColor: Colors.white,
            pinned: false,
            floating: false,
          ),
          const SliverToBoxAdapter(
            child: StoryRail(),
          ),
        ],
        body: const PostRail(),
      ),
    );
  }
}
