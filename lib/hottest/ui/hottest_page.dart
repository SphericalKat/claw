import 'package:boxy/slivers.dart';
import 'package:claw/common/widgets/post_item.dart';
import 'package:claw/hottest/cubit/hottest_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HottestPage extends StatefulWidget {
  const HottestPage({super.key});

  @override
  State<HottestPage> createState() => _HottestPageState();
}

class _HottestPageState extends State<HottestPage> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<HottestCubit>(context).getHottest();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // getIt<Logger>().d("Brightness", CupertinoTheme.of(context).brightness);
    return CupertinoPageScaffold(
      child: BlocBuilder<HottestCubit, HottestState>(
        builder: (context, state) {
          var slivers = <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Hottest'),
              backgroundColor: CupertinoDynamicColor.resolve(
                      CupertinoColors.systemBackground, context)
                  .withAlpha((0.6 * 255).toInt()),
            )
          ];

          return SafeArea(
            child: CustomScrollView(
              slivers: [
                ...slivers,
                if (state is HottestLoading || state is HottestInitial)
                  const SliverFillRemaining(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  )
                else if (state is HottestComplete)
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
                else
                  const SliverFillRemaining(
                    child: Center(
                      child: Text(
                        'Uh-oh! Something went wrong. 😕',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
