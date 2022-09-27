import 'package:boxy/slivers.dart';
import 'package:claw/comments/cubit/comments_cubit.dart';
import 'package:claw/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentsPage extends StatefulWidget {
  final String commentsUrl;
  const CommentsPage({super.key, required this.commentsUrl});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getIt<CommentsCubit>().getComments(widget.commentsUrl);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: BlocBuilder<CommentsCubit, CommentsState>(
        builder: (context, state) {
          var slivers = [
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Comments'),
              backgroundColor: CupertinoDynamicColor.resolve(
                      CupertinoColors.systemBackground, context)
                  .withAlpha(
                (0.6 * 255).toInt(),
              ),
            )
          ];

          if (state is CommentsLoading || state is CommentsInitial) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CupertinoActivityIndicator(),
                ],
              ),
            );
          } else if (state is CommentsComplete) {
            return SafeArea(
              child: CustomScrollView(
                slivers: [
                  ...slivers,
                  SliverContainer(
                    background: Container(
                      color: CupertinoDynamicColor.resolve(
                          CupertinoColors.systemBackground, context),
                    ),
                    sliver: SliverPadding(
                      padding: const EdgeInsets.all(16.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          var comment = state.comments[index];

                          return Column(
                            children: [
                              Text(comment.commentPlain),
                              if (index != state.comments.length - 1)
                                const SizedBox(height: 16),
                            ],
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            );
          }

          return CustomScrollView(
            slivers: slivers,
          );
        },
      ),
    );
  }
}
