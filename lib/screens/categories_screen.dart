import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/screens/cat_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Members'),),
          body: Container(
        child: GridView.builder(padding: EdgeInsets.all(5.0),
          itemCount: DUMMY_CATEGORIES.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          // children: DUMMY_CATEGORIES
          //     .map((catData) => CategoryItem(
          //           name: catData.title,
          //           imageurl: catData.imageUrl,
          //         ))
          //     .toList(),
          itemBuilder: (context, index) {
            return CategoryItem(
              name: DUMMY_CATEGORIES[index].title,
              imageurl: DUMMY_CATEGORIES[index].imageUrl,
            );
          },
        ),
      ),
    );
  }
}
