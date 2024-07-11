import 'package:fifth2_project/widget/categorys_list_view.dart';
import 'package:fifth2_project/widget/new_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomwView extends StatelessWidget {
  const HomwView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.menu,
              size: 28,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "News",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategorysListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 35),
            ),
            NewListView(),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategorysListView(),
        //     SizedBox(
        //       height: 35,
        //     ),
        //     Expanded(
        //       child: NewListView(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
