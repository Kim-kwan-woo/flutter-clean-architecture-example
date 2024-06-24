import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/entity/post_entity.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage('https://www.lge.co.kr/${post.smallImageAddr}'),
          ),
          title: const Text('LG전자'),
          subtitle: const Text('오늘의 랭킹(추천)'),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('팔로우'),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Image.network('https://www.lge.co.kr/${post.largeImageAddr}'),
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 96,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.favorite_border_outlined),
                        Icon(Icons.comment_outlined),
                        Icon(Icons.send),
                      ],
                    ),
                  ),
                  Icon(Icons.favorite)
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text(
                    'LG전자',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(post.modelDisplayName),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
