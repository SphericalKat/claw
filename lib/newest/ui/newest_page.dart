import 'package:boxy/slivers.dart';
import 'package:claw/common/widgets/post_item.dart';
import 'package:claw/newest/cubit/newest_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestPage extends StatefulWidget {
  const NewestPage({super.key});

  @override
  State<NewestPage> createState() => _NewestPageState();
}

class _NewestPageState extends State<NewestPage> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<NewestCubit>(context).getNewest();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: BlocBuilder<NewestCubit, NewestState>(
        builder: (context, state) {
          var slivers = <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Newest'),
              backgroundColor: CupertinoDynamicColor.resolve(
                      CupertinoColors.systemBackground, context)
                  .withAlpha((0.6 * 255).toInt()),
            )
          ];
          if (state is NewestLoading || state is NewestInitial) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CupertinoActivityIndicator(),
                ],
              ),
            );
          } else if (state is NewestComplete) {
            

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
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Column(
                              children: [
                                PostItem(post: state.posts[index]),
                                if (index != state.posts.length - 1)
                                  const SizedBox(height: 16),
                              ],
                            );
                          },
                          childCount: state.posts.length,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            slivers.add(
              const SliverFillRemaining(
                child: Center(
                  child: Text(
                    'Uh-oh! Something went wrong. 😕',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
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
