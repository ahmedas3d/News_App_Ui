import 'package:fifth2_project/widget/news_tile.dart';
import 'package:flutter/material.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: NewsTile(),
        );
      },
    );
  }
}
