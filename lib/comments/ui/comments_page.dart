import 'package:claw/comments/cubit/comments_cubit.dart';
import 'package:claw/di/injection.dart';
import 'package:flutter/cupertino.dart';

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
    return Container();
  }
}
