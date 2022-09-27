import 'package:cached_network_image/cached_network_image.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boring_avatars/flutter_boring_avatars.dart';
import 'package:logger/logger.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: CupertinoColors.darkBackgroundGray,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: post.title,
                      style:
                          CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          getIt<Logger>().d("PostItem", "Title tapped");
                        },
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 24,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 4),
                      itemBuilder: ((context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: CupertinoTheme.of(context)
                                .primaryColor
                                .withAlpha((0.3 * 255).toInt()),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                  const SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: CachedNetworkImage(
                                imageUrl:
                                  'https://lobste.rs/${post.submitterUser.avatarUrl}',
                              placeholder: (context, url) => BoringAvatars(
                                  name: post.submitterUser.username),
                              errorWidget: (context, url, error) => BoringAvatars(
                                  name: post.submitterUser.username),
                              fadeOutDuration: const Duration(milliseconds: 400),
                              fadeInDuration: const Duration(milliseconds: 400),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        RichText(
                          text: TextSpan(
                              text: 'Submitted by ',
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .textStyle
                                  .copyWith(
                                    fontSize: 12,
                                  ),
                              children: [
                                TextSpan(
                                  style: CupertinoTheme.of(context)
                                      .textTheme
                                      .textStyle
                                      .copyWith(
                                        fontSize: 12,
                                        color: CupertinoTheme.of(context)
                                            .primaryColor
                                            .withAlpha((1 * 255).toInt()),
                                      ),
                                  text: post.submitterUser.username,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      getIt<Logger>().d(
                                          'Tapped on username ${post.submitterUser.username}');
                                    },
                                ),
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Icon(CupertinoIcons.heart),
                    Text(
                      post.score.toString(),
                      style:
                          CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                fontSize: 12,
                              ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                Column(
                  children: [
                    const Icon(CupertinoIcons.chat_bubble),
                    Text(
                      post.commentCount.toString(),
                      style:
                          CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                                fontSize: 12,
                              ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
