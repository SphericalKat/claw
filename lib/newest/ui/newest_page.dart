import 'package:boxy/slivers.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/common/widgets/post_item.dart';
import 'package:claw/newest/cubit/newest_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class NewestPage extends StatefulWidget {
  const NewestPage({super.key});

  @override
  State<NewestPage> createState() => _NewestPageState();
}

class _NewestPageState extends State<NewestPage> {
  final PagingController<int, Post> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void didChangeDependencies() {
    BlocProvider.of<NewestCubit>(context).getNewest();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      BlocProvider.of<NewestCubit>(context).getNewest(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  bool checkLastItem(int index) =>
      index != (_pagingController.itemList?.length ?? 0) - 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: BlocConsumer<NewestCubit, NewestState>(
        listener: (context, state) {
          if (state is NewestComplete) {
            _pagingController.appendPage(state.posts, state.currentPage + 1);
          } else if (state is NewestFailure) {
            _pagingController.value = PagingState(
              error: state.message,
            );
          }
        },
        builder: (context, state) {
          var slivers = <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Newest'),
              backgroundColor: CupertinoDynamicColor.resolve(
                      CupertinoColors.systemBackground, context)
                  .withAlpha((0.6 * 255).toInt()),
            )
          ];

          return SafeArea(
            child: CustomScrollView(
              slivers: [
                ...slivers,
                if (state is NewestInitial || state is NewestLoading)
                  const SliverFillRemaining(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  )
                else
                  SliverContainer(
                    background: Container(
                      color: CupertinoDynamicColor.resolve(
                        CupertinoColors.systemBackground,
                        context,
                      ),
                    ),
                    sliver: SliverPadding(
                      padding: const EdgeInsets.all(16.0),
                      sliver: PagedSliverList(
                        pagingController: _pagingController,
                        builderDelegate: PagedChildBuilderDelegate<Post>(
                          itemBuilder: ((context, item, index) {
                            return Column(
                              children: [
                                PostItem(post: item),
                                if (checkLastItem(index))
                                  const SizedBox(height: 16),
                              ],
                            );
                          }),
                          firstPageErrorIndicatorBuilder: (context) {
                            return const Center(
                              child: Text(
                                'Uh-oh! Something went wrong. 😕',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            );
                          },
                          firstPageProgressIndicatorBuilder: (context) {
                            return const Center(
                              child: CupertinoActivityIndicator(),
                            );
                          },
                          newPageProgressIndicatorBuilder: (context) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(height: 16),
                              CupertinoActivityIndicator()
                            ],
                          ),
                          noItemsFoundIndicatorBuilder: (context) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('Nothing to see here...'),
                              ],
                            ),
                          ),
                          noMoreItemsIndicatorBuilder: (context) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('You\'ve reached the end! 🎉')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
