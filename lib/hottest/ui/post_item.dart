import 'package:claw/common/models/post.dart';
import 'package:flutter/cupertino.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 24,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 4),
            itemBuilder: ((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: CupertinoTheme.of(context).primaryColor.withAlpha((0.3 * 255).toInt()),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Column(
                  children: [
                    Text(
                      post.tags[index],
                      style: TextStyle(
                        fontSize: 12,
                        color: CupertinoTheme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              );
            }),
            itemCount: post.tags.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 8),
        if (post.description.isNotEmpty) ...[
          Text(
            post.description,
            style: const TextStyle(
              fontSize: 8,
            ),
          ),
          const SizedBox(height: 8),
        ],
        Text(
          post.score.toString(),
          style: const TextStyle(),
        ),
      ],
    );
  }
}
