import 'package:fifth2_project/widget/news_tile.dart';
import 'package:flutter/material.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(),
        );
      }),
    );
  }
}
